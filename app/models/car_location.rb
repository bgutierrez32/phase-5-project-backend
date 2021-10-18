class CarLocation < ApplicationRecord
  belongs_to :location
  belongs_to :car
end
