Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # List all
  # Add
  # Show one
  # Update
  # Delete
  # 1) List all with index route - just one request
  get "tasks", to: "tasks#index"
  # 2) Add a task which requires get to go to a form and post to return the form input
  # The get needs #new, the post needs #create -  two requests in total
  get "tasks/new", to: "tasks#new", as: "new_task"
  post "tasks", to: "tasks#create"
  # 3) The show one is a get however needs the id to work out what to show
  # this is then used with a #show - just one request
  get "tasks/:id", to: "tasks#show", as: "task"
  # 4) The update requires two requests and requires the id of the task to edit and an edit route
  # This is combined with a #edit
  # The second request is a patch request which updates the record with the new value this is combined with #update
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "tasks/:id", to: "tasks#update"
  # 5) The delete is just one request and is not a get nor a post nor a patch
  # The verb is delete but destroy is then used as this is the D in CRUD
  delete "tasks/:id", to: "tasks#destroy"
end
