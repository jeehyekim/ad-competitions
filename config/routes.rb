Rails.application.routes.draw do

  root to: 'competitions#index'

  get'category/:tag', to: 'categories#index', as: "tag"

  resources :competitions, only: [:index, :new, :create, :show, :edit, :update, :destroy ]

  # resources :users, only: [:new]

end
