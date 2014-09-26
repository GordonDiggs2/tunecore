Tunecore::Application.routes.draw do
  resources :songs
  resources :albums
  resources :artists
  root to: 'home#show'
end
