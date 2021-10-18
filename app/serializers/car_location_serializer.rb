class CarLocationSerializer < ActiveModel::Serializer
  attributes :id
  has_one :location
  has_one :car
end
