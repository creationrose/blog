class Post <ActiveRecord::Base
	has_many :comments
<<<<<<< HEAD
=======
	belongs_to :user
>>>>>>> 251ce9a
	validates :title, presence: true
	validates :body, presence: true
end
