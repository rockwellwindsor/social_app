class MapTilesSubscription < ApplicationRecord
  belongs_to :tile
  belongs_to :map
  belongs_to :user
end
