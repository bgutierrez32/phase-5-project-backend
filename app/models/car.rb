class Car < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_many :car_locations
  has_many :locations, through: :car_locations
end
