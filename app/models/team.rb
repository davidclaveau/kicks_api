class Team < ApplicationRecord
  has_many :team_manager, foreign_key: "team_manager_id"
end
