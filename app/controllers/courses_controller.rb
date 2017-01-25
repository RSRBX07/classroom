class CoursesController < ApplicationController
  def show_course
    @course = Course.last
    @student = Student.last
  end

  
end
