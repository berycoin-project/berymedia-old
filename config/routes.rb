Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users, controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
  }
  resources :users

  get 'about', to: 'pages#about'
end
