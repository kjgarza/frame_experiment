module NewFeedbacksHelper

  include UsersHelper
  include AssetsHelper
  include ImagesHelper


  def display_single_others_items item, action

    scientist = ['Charlene Sullen',
    'Esteban Poteete',
    'Cornelius Wheelock',
    'Aletha Telford',
    'Kandace Mood',
    'Aurore Chiaramonte',
    'Antonina Fambro',
    'Charity Brownfield',
    'Lamonica Masters',
    'Johnson Thames']

    creators = scientist.sample(rand(1...4))

    html=''
    unless item.blank?
      image=item[:avatar_image]
      icon  = link_to(image, item[:url], :class=> "asset", :title => tooltip_title_attrib(item[:type]))

      description = item[:description] || item[:abstract]

      tooltip=tooltip_title_attrib("<p>#{description.blank? ? 'No description' : description}</p><p class='feedinfo none_text'>#{item[:created_at]}</p>")
      html << "<tr class='success'>"
      html << "<td>"
      html << creators.first
      html << "</td>"
      html << "<td>"
      html << "#{icon} "
      html << link_to(item[:title], item[:url], :title => tooltip)
      html << "</td>"
      html << "<td>"
      html << creators.join(", ")
      html << "</td>"
      html << "<td><img src='http://i.imgur.com/K0vv79b.png' width='19'></td>"
      html << "<td>dx.doi.org/"
      html << String(rand(6070...8039))
      html <<  "/m9.citeme."
      html << String(rand(11000...22000))
      html << "</td>"
      html << "</tr>"
    end
    html.html_safe
  end


  def display_single_new_item item, action

    scientist = ['Charlene Sullen',
                 'Esteban Poteete',
                 'Cornelius Wheelock',
                 'Aletha Telford',
                 'Kandace Mood',
                 'Aurore Chiaramonte',
                 'Antonina Fambro',
                 'Charity Brownfield',
                 'Lamonica Masters',
                 'Johnson Thames']

    creators = scientist.sample(rand(1...3))

    mylink = "<td></td> "

    case params[:with_who]
      when "private"

        color = "<tr class='danger'>"
        icons  =  "<td><span class='glyphicon glyphicon-ban-circle' aria-hidden='true' alt='This is private'></span></td>"
      when "public"
        color ="<tr class='success'>"
        icons =  "<td><img src='http://i.imgur.com/K0vv79b.png' width='19'></td>"
      when "collaborators"
        color = "<tr class='warning'>"
        icons =  "<td><span class='glyphicon glyphicon-ban-circle' aria-hidden='true' alt='This is private'></span></td>"
      else
        icons =  "<td><span class='glyphicon glyphicon-ban-circle' aria-hidden='true' alt='This is private'></span></td>"
        color = "<tr class='warning'>"
    end

    if params[:with_who] == "public"
      if session[:planout_data][:template][:name] != "CONTROL"
        mylink = "<td>dx.doi.org/"+String(rand(6070...8039))+"/m9.citeme."+String(rand(11000...22000))+"</td>"
      else
        mylink = "<td>http://www.share.org/"+String(rand(6070...8039))+"/m9.share."+String(rand(11000...22000))+"</td>"
      end
    end



    html=''
    unless item.blank?
      image=item[:avatar_image]
      icon  = link_to(image, item[:url], :class=> "asset", :title => tooltip_title_attrib(item[:type]))

      description = item[:description] || item[:abstract]

      tooltip=tooltip_title_attrib("<p>#{description.blank? ? 'No description' : description}</p><p class='feedinfo none_text'>#{item[:created_at]}</p>")
      html << color
      html << "<td>"
      html << "1"
      html << "</td>"
      html << "<td>"
      html << "#{icon} "
      html << link_to(item[:title], item[:url], :title => tooltip)
      html << "</td>"
      html << "<td>"
      html << ("Alex Draper, ")+creators.join(", ")
      html << "</td>"
      html << icons
      html << mylink
      # html <<  String(rand(6070...8039))
      # html <<  "/m9.citeme."
      # html << String(rand(11000...22000))
      # html << "</td>"
      html << "</tr>"
    end
    html.html_safe
  end



end