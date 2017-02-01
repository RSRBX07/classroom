Rails.application.routes.draw do
  resources :students
  root "students#index"

#nav
  get 'students/index', :as => "acceuil"
  get 'students/show/:id', :to => "students#show" , :as => "student_profile"
  get 'courses/show/:id', :to => "courses#show" , :as => "setup_courses"

#create course
  resources :courses
  # get 'courses/new', to: 'courses#new', as: "new_course"
  # post 'courses/create', to: 'courses#create',as:"courses"

#remove/add student's course
  post 'students/course/:id', to: 'students#remove_course', :as => "rmc_student"
  post 'course/:id', to: 'courses#add_course'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
