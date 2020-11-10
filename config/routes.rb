Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks' => 'tasks#index'
  post 'tasks' => 'tasks#create'
  get 'tasks/new' => 'tasks#new', as: :create_task
  get 'tasks/:id' => 'tasks#show', as: :task
  get 'tasks/:id/edit' => 'tasks#edit', as: :edit_task
  patch 'tasks/:id' => 'tasks#update'
end
