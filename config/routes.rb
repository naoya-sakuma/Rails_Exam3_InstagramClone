Rails.application.routes.draw do
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  post '/users/:id', to: 'users#profile_create'
  resources :favorites, only: [:create, :destroy]
  get '/favorites', to: 'users#favorite'

end
