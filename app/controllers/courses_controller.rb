class CoursesController < ApplicationController
  def show_course
    @course = Course.find(params["id"])
  end
end
