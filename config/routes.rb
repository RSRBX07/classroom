Rails.application.routes.draw do
  root "students#index"
  get 'students/index'

  get 'students/show/:id', :to => "students#show" , :as => "student"
  get 'courses/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
