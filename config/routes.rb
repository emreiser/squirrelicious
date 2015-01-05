Squirrelicious::Application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :yummly, only: :index

  resources :recipes, only: [:index, :create, :show]
  post '/recipes/:id', to: 'recipes#favorite', as: 'favorite_recipe'
  get '/gear', to: 'home#gear', as: 'gear'
  get '/about', to: 'home#about', as: 'about'
  get '/search', to: 'recipes#search', as: 'search'
end
