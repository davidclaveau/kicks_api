class Team < ApplicationRecord
  belongs_to :user, foreign_key: "manager_id"

  has_many :rosters
  has_many :schedules, as: "home_team_id"
  has_many :schedules, as: "away_team_id"
end
