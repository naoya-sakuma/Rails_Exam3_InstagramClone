Rails.application.routes.draw do
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]
  get '/favorites', to: 'users#favorite'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
