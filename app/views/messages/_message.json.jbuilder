json.extract! message, :id, :title, :note, :created_at, :updated_at
json.url message_url(message, format: :json)