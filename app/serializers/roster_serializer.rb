class RosterSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  belongs_to :team
end
