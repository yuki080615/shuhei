Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'top#index'
  get '/tasks/new', to: 'tasks#new'
  get '/tasks' , to: 'tasks#index'
  get '/tasks/:id/edit', to: 'tasks#edit'
  get '/tasks/:id', to: 'tasks#show', as: 'task' 
  post '/tasks' , to: 'tasks#create'
  post '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'

  get '/api/tasks', to: 'api/tasks#index'
  post '/api/tasks', to: 'api/tasks#create'
end
