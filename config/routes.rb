Rails.application.routes.draw do
  resources :termins
  root to: 'ballonfahrers#index'
  resources :ballonfahrers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :sessions

get    'signup'  => 'ballonfahrers#new'
get '/login', :controller => 'sessions', :action => 'new'
post '/login', :controller => 'sessions', :action => 'create'
get '/logout', :controller => 'sessions', :action => 'destroy'
end
