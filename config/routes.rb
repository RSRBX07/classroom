Rails.application.routes.draw do
  
  resources :courses

#  get 'courses/edit'

#  get 'courses/index'

  get 'students/index'

  get 'students/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
