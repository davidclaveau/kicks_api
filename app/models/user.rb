class User < ApplicationRecord
  has_many :teams
  has_many :user_roles
  has_many :disciplines
  
  belongs_to :female_player_id, class_name: "User"
  belongs_to :male_player_id, class_name: "User"

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
end
