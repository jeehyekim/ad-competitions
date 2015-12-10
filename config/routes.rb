Rails.application.routes.draw do

  root to: 'competitions#index'

  resources :competitions, only: [:index, :new, :create, :show]

  # resources :users, only: [:new]

end
