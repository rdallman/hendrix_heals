json.array!(@rooms) do |room|
  json.extract! room, :number, :bed, :privacy
  json.url room_url(room, format: :json)
end