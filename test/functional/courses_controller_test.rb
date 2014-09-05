require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { begin_date: @course.begin_date, begin_time: @course.begin_time, classroom_id: @course.classroom_id, description: @course.description, end_date: @course.end_date, end_time: @course.end_time, name: @course.name, quantity_of_students: @course.quantity_of_students, tuition: @course.tuition }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    put :update, id: @course, course: { begin_date: @course.begin_date, begin_time: @course.begin_time, classroom_id: @course.classroom_id, description: @course.description, end_date: @course.end_date, end_time: @course.end_time, name: @course.name, quantity_of_students: @course.quantity_of_students, tuition: @course.tuition }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
