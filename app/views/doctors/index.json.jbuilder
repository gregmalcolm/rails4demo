json.array!(@doctors) do |doctor|
  json.extract! doctor, :actor, :number
  json.url doctor_url(doctor, format: :json)
end