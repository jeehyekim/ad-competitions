Rails.application.routes.draw do

  root to: 'competitions#index'

  get'category/:tag', to: 'categories#index', as: "tag"

  resources :competitions, only: [:index, :new, :create, :show, :edit, :update, :destroy, :newcompetition]

  resources :users, only: [:create, :show, :edit]
  get 'signup', to: 'users#new'
  # resources :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
