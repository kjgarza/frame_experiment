# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'jerm/populator'

module Jerm
  #A JERM populator that is intended to be used embedded with directly within the SYSMO-DB Rails application - therefore having direct access to the
  #API and Active Record resources.
  class EmbeddedPopulator < Populator    

    def find_by_uri uri
      ContentBlob.find(:first,:conditions=>{:url=>uri})
    end

    #adds the resource as a new asset within the registry
    #returns a report:
    # {:response=>:success|:fail|:skipped,:message=>"",:exception=>Exception|nil}
    def add_as_new resource
      begin
        warning=nil
        project = Project.find(:first,:conditions=>['name = ?',resource.project])
      
        if resource.author_seek_id && resource.author_seek_id.to_i>0 #final check it that the string is a number. to_i on String returns 0 if not
          author = Person.find(resource.author_seek_id)
        else
          author = Person.find(:first,:conditions=>['first_name = ? AND last_name = ?',resource.author_first_name,resource.author_last_name])
        end

        if project.nil?
          response={:response=>:fail,:message=>MESSAGES[:no_project]}
        elsif author.nil?
          response={:response=>:fail,:message=>MESSAGES[:no_author]}
        elsif resource.uri.nil?
          response={:response=>:fail,:message=>MESSAGES[:no_uri]}
        else
          #create SOP,DataFile or Model (or other type that may be added in the future)        
          resource_model=eval("#{resource.type}.new")
          resource_model.contributor=author.user
          #associate with ContentBlob
          resource_model.content_blob = ContentBlob.new(:url=>resource.uri)
          resource_model.original_filename = determine_filename(resource)

          title=resource.title
          if title.blank?
            warning = "There was no title defined, so using the filename"
            title=resource_model.original_filename
          end
          resource_model.title=title
          
          if project.default_policy.nil?
            response={:response=>:fail,:message=>MESSAGES[:no_default_policy]}
          else
            #save it
            #FIXME: try and avoid this double save - its currently done here to create the Asset before connecting to the policy. If unavoidable, do as a transaction with rollback on failure
            resource_model.save!
            resource_model.asset.project=project
            #assign default policy, and save the associated asset

            resource_model.asset.policy=project.default_policy.deep_copy
            resource_model.asset.policy.contributor=author
            resource_model.asset.save!
            if warning
              response={:response=>:warning,:message=>warning,:seek_model=>resource_model}
            else
              response={:response=>:success,:message=>MESSAGES[:success],:seek_model=>resource_model}
            end
            
          end
          
        end
      rescue Exception=>exception
        response={:response=>:fail,:message=>"Something went wrong",:exception=>exception}
      end
      return response
    end

    def determine_filename resource
      URI.unescape(resource.uri).split("/").last
    end

    def default_policy author,project
      nil
#      Policy.new(:name => 'auto',
#        :contributor_type => 'User',
#        :contributor_id => author.user.id,
#        :sharing_scope => Policy::EVERYONE,
#        :access_type => Policy::DOWNLOADING,
#        :use_custom_sharing => false,
#        :use_whitelist => false,
#        :use_blacklist => false)
    end
  end
end
