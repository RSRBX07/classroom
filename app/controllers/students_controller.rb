class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit]

  def index
    @students= Student.all
    @time = DateTime.now.strftime("%T")
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def set_student
    @student = Student.find params[:id]
  end

  def student_params
    params.require(:student).permit(:name, :avatar, :course_id)

  end
end
