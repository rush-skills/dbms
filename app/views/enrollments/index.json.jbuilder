json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :grade, :student_id, :course_offering_id
  json.url enrollment_url(enrollment, format: :json)
end
