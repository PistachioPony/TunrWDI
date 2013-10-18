Tunr::Application.routes.draw do
  resources :artists, only: [:index, :show]
  resources :songs, only: [:show]

  resources :users

  resource :session, only: [:new, :create, :destroy]
end
