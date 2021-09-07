Rails.application.routes.draw do

  devise_for :admins
  devise_for :customers
  root to: 'homes#top'
  resources :customers, only: [:show, :edit, :update]
  resources :animals
  resources :messages, only: [:create]
  resources :rooms, only: [:create,:show]

  get '/search', to: 'searches#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :customers, expect: [:new, :destroy, :create]
    resources :animals, expect: [:new, :create, :update]
  end
end
