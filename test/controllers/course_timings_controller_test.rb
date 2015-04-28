require 'test_helper'

class CourseTimingsControllerTest < ActionController::TestCase
  setup do
    @course_timing = course_timings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_timings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_timing" do
    assert_difference('CourseTiming.count') do
      post :create, course_timing: { classroom_id: @course_timing.classroom_id, course_offering_id: @course_timing.course_offering_id, timing_id: @course_timing.timing_id }
    end

    assert_redirected_to course_timing_path(assigns(:course_timing))
  end

  test "should show course_timing" do
    get :show, id: @course_timing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_timing
    assert_response :success
  end

  test "should update course_timing" do
    patch :update, id: @course_timing, course_timing: { classroom_id: @course_timing.classroom_id, course_offering_id: @course_timing.course_offering_id, timing_id: @course_timing.timing_id }
    assert_redirected_to course_timing_path(assigns(:course_timing))
  end

  test "should destroy course_timing" do
    assert_difference('CourseTiming.count', -1) do
      delete :destroy, id: @course_timing
    end

    assert_redirected_to course_timings_path
  end
end
