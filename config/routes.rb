Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create]

  root ('welcome#index')

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
