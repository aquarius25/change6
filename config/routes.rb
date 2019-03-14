Rails.application.routes.draw do
  root "groups#index"
  resources :users
  resources :accounts
  resources :articles
  resources :tweets
  resources :groups, only: [:index, :new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
