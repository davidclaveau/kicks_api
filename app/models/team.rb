class Team < ApplicationRecord
  belongs_to :home_team_id, class_name: "Team"
  belongs_to :away_team_id, class_name: "Team"
end
