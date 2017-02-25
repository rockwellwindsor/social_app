class MapTile < ApplicationRecord
  belongs_to :map
  belongs_to :map_category
  belongs_to :user
end
