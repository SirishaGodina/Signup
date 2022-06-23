Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#home'
  get '/users/new' => 'users#new'
  post '/users/create' => 'users#create'

  get '/sessions/new' => 'sessions#new'
  post '/sessions/create' => 'sessions#create'
  get 'sessions/destroy' => 'sessions#destroy'

  get '/user_details/new' => 'user_details#new'
  get '/user_details/details1' => 'user_details#details1'
  get '/user_details/details2' => 'user_details#details2'
  post '/user_details/create' => 'user_details#create'
  get '/user_details/show' => 'user_details#show'


end
