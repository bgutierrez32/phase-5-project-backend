class ServiceTagSerializer < ActiveModel::Serializer
  attributes :id, :service_name
  has_one :service
end
