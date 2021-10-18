class CarSerializer < ActiveModel::Serializer
  attributes :id, :year, :make, :model, :insurance, :user_id
end
