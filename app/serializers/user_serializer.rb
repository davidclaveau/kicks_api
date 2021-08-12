class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :first_name, :last_name, :phone_number, :team_id, :winter_team, :public_sector
end
