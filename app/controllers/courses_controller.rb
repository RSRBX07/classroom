class CoursesController < ApplicationController
  def index
     @courses= Course.all    
  end
  def edit
  end
  def show
  end
end
