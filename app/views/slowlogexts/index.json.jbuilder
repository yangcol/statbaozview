json.array!(@slowlogexts) do |slowlogext|
  json.extract! slowlogext, :id, :name, :key, :duration, :date, :value
  json.url slowlogext_url(slowlogext, format: :json)
end
