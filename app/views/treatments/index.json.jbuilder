json.array!(@treatments) do |treatment|
  json.extract! treatment, 
  json.url treatment_url(treatment, format: :json)
end