json.array!(@companions) do |companion|
  json.extract! companion, :name, :skills
  json.url companion_url(companion, format: :json)
end