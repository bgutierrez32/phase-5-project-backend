class ShopService < ApplicationRecord
  belongs_to :service
  belongs_to :shop
end
