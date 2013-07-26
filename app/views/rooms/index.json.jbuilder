json.array!(@rooms) do |room|
  json.extract! room, :number, :bed, :privacy, :patient_id
  json.url room_url(room, format: :json)
end
