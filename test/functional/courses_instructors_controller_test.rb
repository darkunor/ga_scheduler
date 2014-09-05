require 'test_helper'

class CoursesInstructorsControllerTest < ActionController::TestCase
  setup do
    @courses_instructor = courses_instructors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses_instructors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create courses_instructor" do
    assert_difference('CoursesInstructor.count') do
      post :create, courses_instructor: { course_id: @courses_instructor.course_id, instructor_id: @courses_instructor.instructor_id }
    end

    assert_redirected_to courses_instructor_path(assigns(:courses_instructor))
  end

  test "should show courses_instructor" do
    get :show, id: @courses_instructor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @courses_instructor
    assert_response :success
  end

  test "should update courses_instructor" do
    put :update, id: @courses_instructor, courses_instructor: { course_id: @courses_instructor.course_id, instructor_id: @courses_instructor.instructor_id }
    assert_redirected_to courses_instructor_path(assigns(:courses_instructor))
  end

  test "should destroy courses_instructor" do
    assert_difference('CoursesInstructor.count', -1) do
      delete :destroy, id: @courses_instructor
    end

    assert_redirected_to courses_instructors_path
  end
end
