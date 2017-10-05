Rails.application.routes.draw do
  resources :courses
  resources :instructors
  resources :subjects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'

end
