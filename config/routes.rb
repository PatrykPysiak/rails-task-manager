Rails.application.routes.draw do
  get 'tasks', to: 'tasks#tasks'

  get 'tasks/:id', to: 'tasks#show'

  get 'task/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id/edit', to: "tasks#edit"#, as: 'edit'
  patch 'tasks/:id', to: "tasks#update"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
