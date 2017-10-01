Rails.application.routes.draw do
  # Make this default landing page
  root 'welcome#index'
  # Allow users to visit /about instead of /welcome/about
  get 'about' => 'welcome#about'

end
