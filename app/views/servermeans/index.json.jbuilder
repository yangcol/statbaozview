json.array!(@servermeans) do |servermean|
  json.extract! servermean, :id, :name, :key, :date, :duration, :value
  json.url servermean_url(servermean, format: :json)
end
