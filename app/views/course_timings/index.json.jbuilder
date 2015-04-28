json.array!(@course_timings) do |course_timing|
  json.extract! course_timing, :id, :timing_id, :course_offering_id, :classroom_id
  json.url course_timing_url(course_timing, format: :json)
end
