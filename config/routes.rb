Rails.application.routes.draw do

  root to: 'competitions#index'

  resources :users, only: [:create, :show, :edit, :update]

  # resources :users do
  #   get :competitions
  # end
  
  get 'signup', to: 'users#new'

  get'category/:tag', to: 'categories#index', as: "tag"

  resources :commitments, only: [:new, :create]

  resources :competitions, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  # resources :competitions do
  #   get :addtouser
  # end

  match '/suggest', to: 'suggests#new', via: 'get'
  resources :suggests, only: [:new, :create]

  # resources :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end

