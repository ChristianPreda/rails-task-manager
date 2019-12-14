Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#lire toutes les tasks
get "tasks" => "tasks#index"

#lire une task
get "tasks/:id" => "tasks#show"

#creer une task (2 requets)
get "tasks/new" => "tasks#new"
post "tasks" => "tasks#create"

#updater une task(2 requets)
get "tasks/:id/edit" => "tasks#edit"
patch "tasks/:id" => "tasks#update"

#supprimer une task
delete "tasks/:id" => "tasks#destroy"
end
