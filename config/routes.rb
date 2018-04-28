Rails.application.routes.draw do

  get 'visitors', to: 'visitors#index'
  resources :votes
  resources :categories
  resources :comments
  resources :statuses
  resources :reactions
  resources :tasks
  resources :socials
  resources :addresses
  resources :contacts
  resources :skills
  resources :ranks
  resources :wallets
  resources :roles
  resources :information

  resources :courses do
    resources :comments, :controller => "course_comments", only: [:create]
  end
  resources :articles do
    resources :comments, :controller => "article_comments", only: [:create]
  end
  resources :projects do
    resources :comments, :controller => "project_comments", only: [:create]
    resources :votes, :controller => "project_votes", only: [:create]
  end

  root to: 'user_dashboard#index'
  devise_for :users, controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
  }
  resources :users
  get 'about', to: 'pages#about'
end
