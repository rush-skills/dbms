json.array!(@prerequisites) do |prerequisite|
  json.extract! prerequisite, :id, :prerequisite_id, :course_id
  json.url prerequisite_url(prerequisite, format: :json)
end
