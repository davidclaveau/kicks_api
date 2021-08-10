class Result < ApplicationRecord
  belongs_to :schedule
  belongs_to :female_player
  belongs_to :male_player
end
