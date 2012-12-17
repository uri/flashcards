class Notebook < ActiveRecord::Base
  attr_accessible :title
  acts_as_taggable

  has_many :pages

  def pages_count
    Page.where(:notebook_id => self.id).count
  end
end
