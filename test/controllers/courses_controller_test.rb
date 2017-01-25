require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get show_courses" do
    get courses_show_courses_url
    assert_response :success
  end

end
