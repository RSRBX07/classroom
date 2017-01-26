class StudentsController < ApplicationController
 
  def index 
     @students= Student.all
     @courses= Course.all
  end

  def show
    @student = Student.find params[:id]
  end

  def new
   @student = Student.new
  end
end
