Rails.application.routes.draw do
  root "site#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    resources :events, only: %i[index show create update destroy] #for the api routes
  end
end
