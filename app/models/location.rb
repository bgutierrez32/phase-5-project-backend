class Location < ApplicationRecord
    has_many :car_locations
    has_many :cars, through: :car_locations
    has_many :user_locations
    has_many :users, through: :user_locations
end
