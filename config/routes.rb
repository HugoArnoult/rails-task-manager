Rails.application.routes.draw do
  # -- Read All tasks --
  get 'tasks' => 'tasks#index'
  # -- Create a new task --
  get 'tasks/new' => 'tasks#new', as: :new_task
  post 'tasks' => 'tasks#create'
  # -- Read One task --
  get 'tasks/:id' => 'tasks#show', as: :task
end
