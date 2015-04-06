class Comment <ActiveRecord::Base
	belongs_to :post
	belongs_to :user
	validates :comment, presence: true
	validates_presence_of :user_id
end
