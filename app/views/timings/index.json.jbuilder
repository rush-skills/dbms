json.array!(@timings) do |timing|
  json.extract! timing, :id, :start, :end, :day
  json.url timing_url(timing, format: :json)
end
