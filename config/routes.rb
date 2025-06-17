Rails.application.routes.draw do
 
  resources :contractor
  resources :worker
  
  #  get "index"
  root "user#home"
  get '/user_index' => 'user#index'
  
  get '/user_profile' => 'user#new'
  post '/user_profile'=> 'user#create'

  get '/all_workers' => 'worker#index'
  get '/all_contractors' => 'contractor#index'

  get '/all_users' => 'user#index'

  get '/contractor_home' => 'contractor#home'
  get '/worker_home' => 'worker#home'


  get '/new_task' => 'task#new'
  post '/new_task' => 'task#create'

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
