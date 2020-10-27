Rails.application.routes.draw do
  root to: 'tasks#top'
  get 'tasks/top'
  get 'tasks/index'
  get 'tasks/show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :jobs
  resources :users, except: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
