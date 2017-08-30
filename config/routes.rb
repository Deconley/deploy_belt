Rails.application.routes.draw do
  root 'application#index'

  post 'users' => 'users#create'

  post 'login' => 'sessions#create'
  get 'users/:id' => 'songs#index'
  get 'users' => 'songs#index'
  get '/co_users/:id' => 'users#show'

  get '/songs' => 'songs#index'
  get '/songs/:id' => 'songs#show'
  get '/songs' => 'songs#index'

  post '/new' => 'songs#create'
  post '/add/:id' => 'playlists#add'

  delete 'logout' => 'sessions#destroy'
end
