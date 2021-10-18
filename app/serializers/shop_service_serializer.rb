class ShopServiceSerializer < ActiveModel::Serializer
  attributes :id, :price
  has_one :service
  has_one :shop
end
