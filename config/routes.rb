Rails.application.routes.draw do
  resources :authors
  resources :publications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'authors_publications', to: 'authors_publications#create'
end
