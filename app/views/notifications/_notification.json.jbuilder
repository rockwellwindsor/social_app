json.extract! notification, :id, :title, :user_id, :active, :last_read, :table_name, :table_id, :link, :category, :created_at, :updated_at
json.url notification_url(notification, format: :json)
