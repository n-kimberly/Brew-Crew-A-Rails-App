Rails.application.routes.draw do
  resources :wikis
  devise_for :users
  # Make this default landing page
  root 'welcome#index'
  # Allow users to visit /about instead of /welcome/about
  get 'about' => 'welcome#about'
  resources :charges, only: [:new, :create]
  resources :users
  match "users/:id/downgrade" => "users#downgrade", :as => "downgrade_user", via: [:get, :post]
end
