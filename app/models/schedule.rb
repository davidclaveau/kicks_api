class Schedule < ApplicationRecord
  has_many :home_team_id, foreign_key: "home_team_id"
  has_many :away_team_id, foreign_key: "away_team_id"
end
