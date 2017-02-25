json.extract! participant, :id, :discussion_id, :user_id, :last_read, :window_state, :active, :created_at, :updated_at
json.url participant_url(participant, format: :json)
