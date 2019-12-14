Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#lire toutes les tasks
get "tasks", to: "tasks#index", as: :tasks

#creer une task (2 requets)
get "tasks/new" => "tasks#new", as: :new_task
post "tasks" => "tasks#create"

#updater une task(2 requets)
get "tasks/:id/edit" => "tasks#edit", as: :edit
patch "tasks/:id" => "tasks#update"

#lire une task
get "tasks/:id" => "tasks#show", as: :task

#supprimer une task
delete "tasks/:id" => "tasks#destroy", as: :destroy
end





