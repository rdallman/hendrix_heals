json.array!(@physicians) do |physician|
  json.extract! physician, :name, :phone, :office
  json.url physician_url(physician, format: :json)
end