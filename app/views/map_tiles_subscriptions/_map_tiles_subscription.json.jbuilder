json.extract! map_tiles_subscription, :id, :tile_id, :map_id, :user_id, :completed, :active, :locked, :status, :created_at, :updated_at
json.url map_tiles_subscription_url(map_tiles_subscription, format: :json)
