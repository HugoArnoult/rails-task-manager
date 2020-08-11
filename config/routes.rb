Rails.application.routes.draw do
  # -- Read All tasks --
  get 'tasks' => 'tasks#index'
  # -- Create a new task --
  get 'tasks/new' => 'tasks#new', as: :new_task
  post 'tasks' => 'tasks#create'
  # -- Read One task --
  get 'tasks/:id' => 'tasks#show', as: :task
  # -- Update task --
  get 'tasks/:id/edit' => 'tasks#edit', as: :edit_task
  patch 'tasks/:id' => 'tasks#update'
  # -- Delete task --
  delete 'tasks/:id' => 'tasks#destroy'
end
