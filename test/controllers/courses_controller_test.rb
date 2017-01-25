require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get show_course" do
    get courses_show_course_url
    assert_response :success
  end

end
