Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :users
  resources :authors
  resources :publications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'authors_publications', to: 'authors_publications#create'
end
