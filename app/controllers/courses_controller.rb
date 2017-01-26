class CoursesController < ApplicationController
  def show_course
    @course = Course.last
  end

  
end
