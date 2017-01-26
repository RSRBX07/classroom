class CoursesController < ApplicationController
  def index
    @courses= Course.all
  end

  def show
    @titre= Course.field
    @course= Course.find(params[:id])
    @students= @course.students
  end
end

