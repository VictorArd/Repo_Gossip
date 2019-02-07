Rails.application.routes.draw do

  root 'static_pages#accueil'
  get 'accueil', to: 'static_pages#accueil'

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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
