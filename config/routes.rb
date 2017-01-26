Rails.application.routes.draw do
  
  #get 'courses/show'

  get 'courses/show/:id', :to => "courses#show" ,as: 'course'

  get 'courses/index'

  get 'students/index'

  get 'students/show'

  root "courses#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
