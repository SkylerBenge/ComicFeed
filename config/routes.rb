ComicFeed::Application.routes.draw do
  root :to => 'comics#index'

  resources :comics
  resources :users
  resources :sessions

  get "/logout", to: "sessions#destroy"
  get "/mycomics", to: "comics#show"
  get "/home", to: "comics#index"

  post "/comics", to: "comics#create"

  get '/comic1', to: 'comics#comic1', as: 'comic1'
  get '/comic2', to: 'comics#comic2', as: 'comic2'
  get '/comic3', to: 'comics#comic3', as: 'comic3'
  get '/comic4', to: 'comics#comic4', as: 'comic4'
  get '/comic5', to: 'comics#comic5', as: 'comic5'
  get '/comic6', to: 'comics#comic6', as: 'comic6'
  get '/comic7', to: 'comics#comic7', as: 'comic7'
  get '/comic8', to: 'comics#comic8', as: 'comic8'
  get '/comic9', to: 'comics#comic9', as: 'comic9'
  get '/comic10', to: 'comics#comic10', as: 'comic10'
  get '/comic11', to: 'comics#comic11', as: 'comic11'
  get '/comic12', to: 'comics#comic12', as: 'comic12'
  get '/comic13', to: 'comics#comic13', as: 'comic13'
  get '/comic14', to: 'comics#comic14', as: 'comic14'
  get '/comic15', to: 'comics#comic15', as: 'comic15'
  get '/comic16', to: 'comics#comic16', as: 'comic16'
  get '/comic17', to: 'comics#comic17', as: 'comic17'
  get '/comic18', to: 'comics#comic18', as: 'comic18'
  get '/comic19', to: 'comics#comic19', as: 'comic19'
  get '/comic20', to: 'comics#comic20', as: 'comic20'
end
