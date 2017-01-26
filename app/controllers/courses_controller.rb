class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
 
  def show
    if params["id"].nil?
        redirect_to '/'
    end 
    @course = Course.find(params["id"])     
    # rescue ActiveRecord::RecordNotFound => error
    #   redirect_to '/courses/show_course'
    # rescue NameError => error
    #   redirect_to '/'
    # end
   
    # Student.where("course_id = ?",params["id"])
    # @c_students = @c_students.to_a unless @c_students.nil?
  end
end
