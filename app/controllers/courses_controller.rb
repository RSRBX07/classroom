class CoursesController < ApplicationController
  def index
     @courses= Course.all    
  end
  def edit course
  end
end
