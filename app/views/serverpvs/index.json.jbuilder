json.array!(@serverpvs) do |serverpv|
  json.extract! serverpv, :id, :name, :key, :date, :duration, :value
  json.url serverpv_url(serverpv, format: :json)
end
