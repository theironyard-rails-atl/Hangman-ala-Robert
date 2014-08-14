Rails.application.routes.draw do
  resources :games
  # Essentially:
  # get '/games' => 'games#index'
  # get '/games/:id' => 'games#show'
  # post '/games' => 'games#create'
  # post '/games/:id => 'games#update'
  # get '/games/new' => 'games#new'
  # get '/games/:id/edit' => 'game#edit'
  # delete '/games/:id' => 'game#destroy'
  # w/ slightly different URL helpers
end
