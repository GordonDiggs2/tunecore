Tunecore::Application.routes.draw do
  resources :songs
  resources :albums
  resources :artists
  get '/search', to: 'music_searches#index'
  root to: 'home#show'
end
