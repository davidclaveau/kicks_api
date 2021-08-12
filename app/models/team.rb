class Team < ApplicationRecord
  belongs_to :user, foreign_key: "manager_id"
end
