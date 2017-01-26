Rails.application.routes.draw do

  get 'courses/edit'

  get 'courses/index'

  get 'courses/show/:id', :to => "courses#show", :as => "show_course"  

  get 'students/index'

  get 'students/show/:id', :to => "students#show", :as => "show_student"

  root "students#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
