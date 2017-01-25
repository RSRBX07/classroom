Rails.application.routes.draw do
  
  get 'courses/show_course_students/:id', to: 'courses#show_course_students'
  
  get 'courses/show_course'

  get 'students/index'

  get 'students/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
