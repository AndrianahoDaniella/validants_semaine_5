Rails.application.routes.draw do

  get 'cities/index'
  get 'cities/show'
  root 'welcome#index'
=begin
  get '/accueil', to: 'accueil#index'
  get 'gossips/:gossip_id', to: 'gossips#index', as: 'gossips_goss_id'
  get '/team', to: 'team#index'
  get '/contact', to: 'contact#index'
  get '/gossips/:id', to: 'gossips#index'
  get '/:id', to: 'accueil#index'
  get '/users/:user_id', to: 'users#index', as: 'users_user_id'
=end
  resources :accueil
  resources :gossips
  resources :team
  resources :contact
  resources :users
  resources :city
  resources :gossips do resources :comments end
  resources :session
end
