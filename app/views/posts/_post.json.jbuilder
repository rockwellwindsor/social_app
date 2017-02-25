json.extract! post, :id, :space_id, :user_id, :favorited_count, :content, :likes_count, :created_at, :updated_at
json.url post_url(post, format: :json)
