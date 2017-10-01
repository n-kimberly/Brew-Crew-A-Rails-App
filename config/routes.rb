Rails.application.routes.draw do
  resources :wikis

  devise_for :users
  # Make this default landing page
  root 'welcome#index'
  # Allow users to visit /about instead of /welcome/about
  get 'about' => 'welcome#about'

end
