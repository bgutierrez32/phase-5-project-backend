class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :date
  has_one :car
  has_one :shop
end
