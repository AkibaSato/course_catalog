Rails.application.routes.draw do
  resources :users
  resources :courses
  resources :instructors
  resources :subjects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'

  get 'instructor', to: 'instructors#index'
  get 'course', to: 'courses#index'
  get 'subject', to: 'subjects#index'
  get 'user', to: 'user#index'




end
