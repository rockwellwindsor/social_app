json.extract! map_tile, :id, :title, :description, :icon, :active, :map_id, :parent_tile_id, :shared, :locked, :color, :map_category_id, :user_id, :created_at, :updated_at
json.url map_tile_url(map_tile, format: :json)
