Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :mood_logs
    resources :scale_items
    resources :moodscales
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
