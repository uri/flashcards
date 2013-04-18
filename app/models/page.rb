
class Page < ActiveRecord::Base
  attr_accessible :content, :notebook_id, :page_number, :title, :tag_list
  acts_as_taggable

  belongs_to :notebook

  def rendered_content
    # RDiscount.new(self.content).to_html.html_safe
    markdown.render(self.content).html_safe
  end

  def markdown
    @renderer||=Redcarpet::Markdown.new(Redcarpet::Render::HTML, fenced_code_blocks: true)
  end
end
