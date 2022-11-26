Rails.application.routes.default_url_options[:host] = "XXX"

Rails.application.routes.draw do
  
  devise_for :users
  resources :users
  resources :categories do
    resources :payments
  end

  # resources :payments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splashes#index"
end