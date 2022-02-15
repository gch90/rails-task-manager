Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # See all task
  get 'tasks', to: 'tasks#index'

  # Create a task
  get 'tasks/new', to: 'tasks#new'

  # See details about one task
  get 'tasks/:id', to: 'tasks#show', as: :task
  post 'tasks', to: 'tasks#create', as: :create

  # Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # delete a task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
end
