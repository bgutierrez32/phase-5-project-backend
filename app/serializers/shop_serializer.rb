class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_one :location
end
