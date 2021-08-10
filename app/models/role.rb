class Role < ApplicationRecord
  has_many :user_role
  has_many :role_resource
end
