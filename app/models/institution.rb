require 'acts_as_editable'
require 'grouped_pagination'
require 'acts_as_uniquely_identifiable'

class Institution < ActiveRecord::Base
  
  acts_as_editable
  
  has_many :favourites, 
           :as => :resource, 
           :dependent => :destroy

  before_save :update_first_letter

  grouped_pagination
  
  validates_presence_of :name
  validates_uniqueness_of :name  
  validates_associated :avatars

  validates_format_of :web_page, :with=>/(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix,:allow_nil=>true,:allow_blank=>true

  has_many :avatars, 
           :as => :owner,
           :dependent => :destroy
  
  has_many :work_groups, :dependent => :destroy
  has_many :projects, :through=>:work_groups

  alias_attribute :title, :name

  acts_as_solr(:fields => [ :name,:country ]) if SOLR_ENABLED
  
  acts_as_uniquely_identifiable
  
  def people
    res=[]
    work_groups.each do |wg|
      wg.people.each {|p| res << p unless res.include? p}
    end
    #TODO: write a test to check they are ordered
    return res.sort{|a,b| a.last_name <=> b.last_name}
  end
  
  # "false" returned by this helper method won't mean that no avatars are uploaded for this institution;
  # it rather means that no avatar (other than default placeholder) was selected for the institution 
  def avatar_selected?
    return !avatar_id.nil?
  end
  
  
  # get a listing of all known institutions
  def self.get_all_institutions_listing
    institutions = Institution.find(:all)
    return institutions.collect { |i| [i.name, i.id] }
  end

  def update_first_letter
    self.first_letter=strip_first_letter(name)
  end
  
end
