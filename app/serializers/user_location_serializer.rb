class UserLocationSerializer < ActiveModel::Serializer
  attributes :id
  has_one :location
  has_one :user
end
