Rails.application.routes.draw do
  resources :entries
  resources :searches
  resources :subject_courses_relations
  resources :enrollments
  resources :sessions
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

  get 'search', to: 'searches#new'
  get 'entry', to: 'entries#index'
  get 'enroll', to: 'enrollments#new'

  get  'signup',  to: 'users#new'

  post 'register', to: 'users#create'


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
