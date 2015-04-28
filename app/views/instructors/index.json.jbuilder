json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :name, :title, :department_id, :identification_number
  json.url instructor_url(instructor, format: :json)
end
