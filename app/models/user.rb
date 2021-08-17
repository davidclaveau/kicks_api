class User < ApplicationRecord
  has_secure_password
  
  has_many :teams, foreign_key: "manager_id"
  has_many :user_roles
  has_many :disciplines
  has_many :rosters

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
end
