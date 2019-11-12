Rails.application.routes.draw do

  # CREATE
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create", as: :create

  # READ
  get "tasks", to: "tasks#index"
  get "tasks/:id", to: "tasks#show", as: :task

  #update

  get    "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch  "tasks/:id",      to: "tasks#update"



  #delete
  delete "tasks/:id",     to: "tasks#destroy" , as: :delete

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
