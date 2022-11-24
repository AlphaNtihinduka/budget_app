Rails.application.routes.default_url_options[:host] = "XXX"

Rails.application.routes.draw do
  resources :splashes
  
  devise_for :users
  resources :categories do
    resources :payments
  end

  # resources :payments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
end
