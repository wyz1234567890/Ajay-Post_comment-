class Post < ActiveRecord::Base

	has_many :comments
	has_many :likes, as: :likeable, dependent: :destroy

     validates :title, presence: true,
                           length: {minimum: 4}
     validates :body, presence: true
                         
end
