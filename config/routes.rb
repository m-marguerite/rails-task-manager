Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  # En tant qu’utilisateur, je peux lister des tâches - Read All
  # get "tasks", to: "tasks#index", as: :tasks

  # En tant qu’utilisateur, je peux ajouter une nouvelle tâche - Create
  # get "tasks/new", to: "tasks#new", as: :new_task
  # post "tasks", to: "tasks#create"

  # En tant qu’utilisateur, je peux afficher les détails d’une tâche - Read One
  # get "tasks/:id", to: "tasks#show", as: :task

  # En tant qu’utilisateur, je peux éditer une tâche (la marquer comme terminée / mettre à jour le titre et les détails)
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # patch "tasks/:id", to: "tasks#update"

  # En tant qu’utilisateur, je peux supprimer une tâche
  # delete "tasks/:id", to: "tasks#destroy"

  # Refacto
  resources :tasks
end
