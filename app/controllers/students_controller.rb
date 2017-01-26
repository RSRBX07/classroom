class StudentsController < ApplicationController
 
  def index 
     @students= Student.all
  end

  def show
    @Students = Student.find params[:id]
  end
end
