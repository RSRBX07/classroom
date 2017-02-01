class CoursesController < ApplicationController

  def index 
     @courses= Course.all
     
  end


  def show
    @students= Student.all

    begin
      @course = Course.find params[:id]
    rescue => exception
      redirect_to students_path, :flash => { :error => "Le cours #{params[:id]} est introuvable, vous avez été redirigé " }
    end
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save!
        format.html { redirect_to students_path, :flash => { :notice => 'Cours créé avec succès'} }
        format.json { render :show, status: :created, location: @courses }
      else
        format.html { render :new}
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_course
      begin
        @course = Course.find(params[:id])
      rescue
        @course = 0
      end
    end

  
  def course_params
      params.require(:course).permit(:field, :teacher)
  end

end
