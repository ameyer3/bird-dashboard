Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  root "birds#index"
  # get "/birds", to: "birds#index"

  # get "/birds/new", to: "birds#new"
  # post "/birds", to: "birds#create"

  # get "/birds/:id", to: "birds#show"
  # get "/birds/:id/edit", to: "birds#edit"
  # patch "/birds/:id", to: "birds#update"
  # put "/birds/:id", to: "birds#update"

  # delete "/birds/:id", to: "birds#destroy"
  resources :birds


  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
