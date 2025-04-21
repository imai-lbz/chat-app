class User < ApplicationRecord
  validates :name, presence: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :room_users
  has_many :rooms, through: :room_users
end
