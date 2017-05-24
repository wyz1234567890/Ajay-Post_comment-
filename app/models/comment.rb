class Comment < ActiveRecord::Base
validates :body, presence: true

  belongs_to :post
  has_many :replies, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  
end
