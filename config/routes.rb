Rails.application.routes.draw do

  get 'courses/edit'

  get 'courses/index'

  get 'students/index'

  get 'students/show/:id', :to => "students#show"

#  get 'students/show/:id' => 'students#show'

  root "students#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
