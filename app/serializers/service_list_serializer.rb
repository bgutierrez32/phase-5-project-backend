class ServiceListSerializer < ActiveModel::Serializer
  attributes :id, :appointment_id, :service_id
end
