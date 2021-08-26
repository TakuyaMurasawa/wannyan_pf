Rails.application.routes.draw do

  devise_for :customers
  root to: 'homes#top'
  resources :customers, only: [:show, :edit, :update]
  resources :animals

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
