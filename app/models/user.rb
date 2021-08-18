class User < ApplicationRecord
  has_secure_password

  has_many :teams, foreign_key: "manager_id"
  has_many :user_roles
  has_many :disciplines
  has_many :rosters

  validates_each :password do |record, attr, value|
    record.errors.add(attr, 'must contain 8 characters')                  unless value =~ /\A(?=.{8,})/x
    record.errors.add(attr, 'must contain at least one number')           unless value =~ /\A(?=.*\d)/x
    record.errors.add(attr, 'must contain at least one uppercase letter') unless value =~ /\A(?=.*[A-Z])/x
  end
  
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
end
