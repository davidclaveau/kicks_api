class Result < ApplicationRecord
  has_many :schedule
  has_many :home_female_player, foreign_key: "home_female_player_id"
  has_many :home_male_player, foreign_key: "home_male_player_id"
  has_many :away_female_player, foreign_key: "away_female_player_id"
  has_many :away_male_player, foreign_key: "away_male_player_id"
end
