Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index', as: 'restaurants'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  get '/restaurants/:id', to: 'restaurant#search'
  get '/pizzas', to: 'pizzas#index', as: 'pizzas'
  get '/pizzas/new', to: 'pizzas#new', as: 'new_pizza'
  post '/pizzas', to: 'pizzas#create'
  get '/pizzas/:id', to: 'pizzas#show', as: 'pizza'
  
  
end
