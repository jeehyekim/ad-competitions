Rails.application.routes.draw do

  root to: 'competitions#index'

  get'tags/:tag', to: 'competitions#index', as: "tag"

  resources :competitions, only: [:index, :new, :create, :show, :edit, :update ]

  # resources :users, only: [:new]

end
