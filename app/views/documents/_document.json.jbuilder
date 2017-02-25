json.extract! document, :id, :title, :file_name, :document_type, :user_id, :active, :privacy_status, :post_id, :created_at, :updated_at
json.url document_url(document, format: :json)
