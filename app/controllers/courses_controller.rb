class CoursesController < ApplicationController
  def show_course
    @courses = Course.all
  end

  def show_course_students
    begin
      @course = Course.find(params["id"])      
    rescue ActiveRecord::RecordNotFound => error
      redirect_to '/courses/show_course'
    rescue NameError => error
      redirect_to '/'
    end
    # @c_students = @course.students # Student.where("course_id = ?",params["id"])
    # @c_students = @c_students.to_a unless @c_students.nil?
  end
end
