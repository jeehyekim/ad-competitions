Rails.application.routes.draw do

  root to: 'competitions#index'

  # resources :competitions, only: [:index]

  # resources :users, only: [:new]

end
