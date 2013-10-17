Tunr::Application.routes.draw do
  resources :artists, only: [:index, :show]
  resources :songs, only: [:show]
end
