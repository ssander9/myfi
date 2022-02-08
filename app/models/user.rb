class User < ApplicationRecord
  has_secure_password
  has_one_attached :main_image
  has_many :scenarios
  
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
end
