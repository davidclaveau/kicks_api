class RoleResource < ApplicationRecord
  belongs_to :resource
  belongs_to :role
end
