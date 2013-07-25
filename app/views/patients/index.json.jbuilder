json.array!(@patients) do |patient|
  json.extract! patient, :name, :street_address, :admit_date, :discharge_date, :zip, :state, :city
  json.url patient_url(patient, format: :json)
end