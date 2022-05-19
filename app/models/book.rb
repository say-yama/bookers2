class Book < ApplicationRecord
  
  has_one_attached :profile_image
  belongs_to :user
  
  validates :title,presence: true
  validates :title,presence: true,length: { maximum: 200 }
  
end
