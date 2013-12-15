json.array!(@events) do |event|
  json.extract! event, :id, :event_date, :description, :gift_ideas
  json.url event_url(event, format: :json)
end
