Tunr::Application.routes.draw do
  resources :artists, only: [:index, :show]
end
