json.extract! social_link, :id, :user_id, :title, :url, :created_at, :updated_at
json.url social_link_url(social_link, format: :json)
