json.array!(@events) do |event|
  json.extract! event, :title, :date
  json.url event_url(event, format: :json)
end
