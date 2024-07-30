# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  resources :patients
  resources :posts
  resources :destroy  
  root 'home#top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tweets
  get "about" => "home#about"  
end
