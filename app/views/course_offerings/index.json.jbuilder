json.array!(@course_offerings) do |course_offering|
  json.extract! course_offering, :id, :course_id, :section_number, :year, :semester
  json.url course_offering_url(course_offering, format: :json)
end
