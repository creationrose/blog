class Post <ActiveRecord::Base
	has_many :comments
	belongs_to :user
	validates :title, presence: true
	validates :body, presence: true

  def body_html
    body.gsub("\n", "<br />\n").html_safe
  end
end
