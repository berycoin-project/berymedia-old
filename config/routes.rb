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
  get 'about', to: 'pages#about'
  
  resources :courses do
    resources :comments, :controller => "course_comments", only: [:create]
    resources :articles, :controller => "course_articles", only: [:create]
    resources :reactions, :controller => "course_reactions", only: [:create]
  end
  resources :articles do
    resources :comments, :controller => "article_comments", only: [:create]
    resources :reactions, :controller => "article_reactions", only: [:create]
  end
  resources :projects do
    resources :comments, :controller => "project_comments", only: [:create]
    resources :votes, :controller => "project_votes", only: [:create]
    resources :reactions, :controller => "article_reactions", only: [:create]
  end

  root to: 'user_dashboard#index'
  devise_for :users, controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
  }
  resources :users
  
end
