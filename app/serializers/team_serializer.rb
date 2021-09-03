class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :active, :jersey_img, :manager
  
  def manager
    {manager_id: self.object.user.id, 
     manager_first_name: self.object.user.first_name,
     manager_last_name: self.object.user.last_name}
  end 
end
