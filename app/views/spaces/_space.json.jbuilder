json.extract! space, :id, :user_id, :title, :description, :space_type, :icon, :isPublic, :isPrivate, :active, :created_at, :updated_at
json.url space_url(space, format: :json)
