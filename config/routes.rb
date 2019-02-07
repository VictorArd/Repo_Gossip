Rails.application.routes.draw do

  root 'accueil#index'
  resources :accueil, only: [:index]
  #get 'accueil', to: 'static_pages#accueil'
  #resources :team, only: [:index]
  get 'team', to: 'static_pages#team'

  get 'contact', to: 'static_pages#contact'
  post 'contact', to: 'static_pages#contact_post'

  get 'welcome/:name', to: 'bienvenue#user'
  #get 'potin/:id', to: 'potin#show', as: 'potin'
  #get 'user/:id', to: 'user#show', as: 'user'

  resources :potin do
    resources :comments
  end

  resources :user

  resources :city, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
