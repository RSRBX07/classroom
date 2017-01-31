Rails.application.routes.draw do
  resources :students
  root "students#index"

  get 'students/index', :as => "acceuil"
  get 'students/show/:id', :to => "students#show" , :as => "student_profile"
  get 'courses/show/:id', :to => "courses#show" , :as => "setup_courses"

  get 'courses/new', to: 'courses#new'
  post 'courses', to: 'courses#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
