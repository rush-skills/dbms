json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :building, :name
  json.url classroom_url(classroom, format: :json)
end
