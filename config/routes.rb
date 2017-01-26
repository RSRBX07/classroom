Rails.application.routes.draw do
  get 'courses/index'

  get 'courses/show'

  get 'courses/show/:id', :to => "courses#show", as: 'course_id'

  get 'students/index'

  get 'students/show'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

