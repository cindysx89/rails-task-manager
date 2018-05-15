Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 # list all tasks
  get "tasks", to:"tasks#index"

# add a new task

  get "tasks/new", to:"tasks#new" #this needs to come before "tasks#shows"
  post "tasks", to:"tasks#create"

# view one task with details

  get "tasks/:id", to:"tasks#show", as: "task" #needs as: "task" because it needed the task prefix in rails routes otherwise it doesn't know where to look

# edit a task (mark as completed, update title & details )

  get "tasks/:id/edit", to:"tasks#edit", as: "edit"
  patch "tasks/:id", to:"tasks#update"
# destroy a task

  delete "tasks/:id", to:"tasks#destroy"

end
