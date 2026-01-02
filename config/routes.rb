# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  resources :patients
  resources :posts do
    collection do
      get 'test'
    end
  end
  # resources :destroy
  # routes.rb
  delete 'posts/:id', to: 'posts#destroy', as: 'destroy_post'
  root 'home#top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tweets
  get "about" => "home#about"  
end
