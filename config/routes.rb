Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # 
  get '/', to: 'welcome#index'
  get '/lists', to: "lists#index"
  get '/lists/:id', to: "lists#show"
  get '/lists/:id/edit', to: 'lists#edit'

  get '/lists/:list_id/items/new', to: 'items#new'
  get '/lists/:list_id/items/:id', to: 'items#show'
  # get '/lists/:list_id/items/:id/edit', to: '#items#edit'
  
  post '/lists/:list_id/items', to: 'items#create'
  delete '/lists/:list_id/items/:id', to: 'items#destroy'

  patch '/lists/:list_id/items/:id/edit', to: 'items#edit'
  
end
