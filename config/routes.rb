Rails.application.routes.draw do
  get 'visitors', to: 'visitors#index'

  resources :courses
  resources :votes
  resources :categories
  resources :articles
  resources :comments
  resources :statuses
  resources :reactions
  resources :tasks
  resources :projects
  resources :socials
  resources :addresses
  resources :contacts
  resources :skills
  resources :ranks
  resources :wallets
  resources :roles
  resources :information
  root to: 'user_dashboard#index'
  devise_for :users, controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
  }
  resources :users

  get 'about', to: 'pages#about'
end
