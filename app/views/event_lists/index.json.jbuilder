json.array!(@event_lists) do |event_list|
  json.extract! event_list, :title, :date
  json.url event_list_url(event_list, format: :json)
end
