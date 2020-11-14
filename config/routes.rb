Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :pictures
  resources :users, only: [:new, :create, :show]

end
