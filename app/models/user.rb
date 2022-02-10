class User < ApplicationRecord
  has_secure_password
  has_one_attached :main_image
  has_many :scenarios, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_many :budgets, dependent: :destroy
  
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
end
