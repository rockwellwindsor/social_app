json.extract! message, :id, :discussion_id, :user_id, :body, :selected, :pinned, :created_at, :updated_at
json.url message_url(message, format: :json)
