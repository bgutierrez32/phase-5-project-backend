class User < ApplicationRecord
    has_many :cars
    has_many :user_locations
    has_many :locations, through: :user_locations
    has_secure_password
end
