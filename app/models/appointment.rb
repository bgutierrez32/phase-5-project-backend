class Appointment < ApplicationRecord
  belongs_to :car
  belongs_to :shop
end
