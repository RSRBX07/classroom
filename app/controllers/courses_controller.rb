class CoursesController < ApplicationController
  def index
    @courses= Course.all
  end

  def show
    @course= Course.last
    @students= Course.all
  end
end
