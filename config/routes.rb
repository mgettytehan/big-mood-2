Rails.application.routes.draw do
  resources :mood_logs
  resources :scale_items
  resources :moodscales
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
