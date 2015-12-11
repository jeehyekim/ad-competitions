Rails.application.routes.draw do

  root to: 'competitions#index'

  # revise. edit template
  get'category/:tag', to: 'competitions#index', as: "tag"

  resources :competitions, only: [:index, :new, :create, :show, :edit, :update, :destroy ]

  # resources :users, only: [:new]

end
