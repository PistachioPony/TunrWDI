Tunr::Application.routes.draw do
  resources :artists, only: [:index, :show]
  resources :songs, only: [:show] do
    member do
      post 'purchase'
    end
  end

  resources :users, except: [:index]

  resource :session, only: [:new, :create, :destroy]
end
