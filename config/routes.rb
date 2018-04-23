Rails.application.routes.draw do
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
  root to: 'visitors#index'
  devise_for :users, controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
  }
  resources :users

  get 'about', to: 'pages#about'
end
