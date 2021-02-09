class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :recettes, dependent: :destroy
  attachment :profile_image
   
  validates :user_name, presence: true
end
