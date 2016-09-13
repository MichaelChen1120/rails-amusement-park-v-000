Rails.application.routes.draw do
resources :users
resources :attractions

root to: 'sessions#welcome'

get '/signin' => 'sessions#new'
post '/signin' => 'sessions#create'
get '/logout' => 'sessions#destroy'
post '/logout' => 'sessions#destroy'
post '/attractions/:id/go_on_ride' => 'attractions#go_on_ride'

end
