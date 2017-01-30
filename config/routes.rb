Rails.application.routes.draw do
  root "welcome#index"
  get 'students/index'

  get 'students/show/:id', :to => "students#show" , :as => "student"
  get 'courses/show'

  #post 'new_student/', to: 'new_student#new', as: 'new_student'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
