class Comment <ActiveRecord::Base
	belongs_to :post
<<<<<<< HEAD
	validates :comment, presence: true
=======
	belongs_to :user
	validates :comment, presence: true
	validates_presence_of :user_id
>>>>>>> 251ce9a
end
