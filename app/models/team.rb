class Team < ApplicationRecord
  has_many :manager, foreign_key: "manager_id"
end
