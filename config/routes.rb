Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # list tasks
  # get "tasks", to: "tasks#index", as: :tasks

  # # add task
  # get "tasks/new", to: "tasks#new", as: :new_task
  # post "tasks", to: "tasks#create"

  # # read task
  # get "tasks/:id", to: "tasks#show", as: :task

  # # edit task
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # patch "tasks/:id", to: "tasks#update"

  # # delete task
  # delete "tasks/:id", to: "tasks#destroy"
  resources :tasks

end
