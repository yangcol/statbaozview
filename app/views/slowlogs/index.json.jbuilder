json.array!(@slowlogs) do |slowlog|
  json.extract! slowlog, :id, :name, :key, :duration, :date, :value
  json.url slowlog_url(slowlog, format: :json)
end
