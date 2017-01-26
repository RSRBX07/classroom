class StudentsController < ApplicationController
 
  def index 
     @students= Student.all
     @courses= Course.all
  end

  def show
    begin
      @student = Student.find params[:id]
    rescue => exception
      redirect_to students_index_path, notice: "L'étudiant #{params[:id0]} est introuvable, vous avez été redirigé "
    end
  end

  def new
   @student = Student.new
  end
end
