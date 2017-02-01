Rails.application.routes.draw do
  resources :students
  root "students#index"

#nav
  get 'students/index/:id', :to => "students#index", :as => "acceuil"
  get 'students/show/:id', :to => "students#show" , :as => "student_profile"
  get 'courses/show/:id', :to => "courses#show" , :as => "setup_courses"
  post 'students/index/increment', :to => "students#increment_limit", :as => "increment_limit"

#create course
  resources :courses
  # get 'courses/new', to: 'courses#new', as: "new_course"
  # post 'courses/create', to: 'courses#create',as:"courses"

#remove/add student's course
  post 'students/course/:id', to: 'students#remove_course', :as => "remove_course"
  post 'course/add', to: 'students#add_course', :as => "add_course"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
