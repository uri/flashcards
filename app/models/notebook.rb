class Notebook < ActiveRecord::Base
  attr_accessible :title

  has_many :pages

  def tags
    tags_list = []
    self.pages.each do |page|
      tags_list += page.tags
    end
    tags_list.uniq
  end
  
  def pages_count
    Page.where(:notebook_id => self.id).count
  end
end
