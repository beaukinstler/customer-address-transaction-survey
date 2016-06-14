Rails.application.routes.draw do

  resources :surveys do
    resources :cats do
    end
  end

  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'surveys#index'
  devise_for :users
  resources :users
end
