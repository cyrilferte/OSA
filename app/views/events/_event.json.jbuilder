json.extract! event, :id, :name, :proba, :impact, :fiab, :start_time, :created_at, :updated_at
json.url event_url(event, format: :json)