json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :start_time
  json.url event_url(event, format: :json)
end
