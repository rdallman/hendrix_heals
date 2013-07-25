json.array!(@procedures) do |procedure|
  json.extract! procedure, :name, :category, :cost, :time, :physician_id, :patient_id
  json.url procedure_url(procedure, format: :json)
end