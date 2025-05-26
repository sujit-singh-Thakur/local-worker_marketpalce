Rails.application.routes.draw do
  get "worker/index"
  get "contractor/index"
   get '/home'=> 'user#home'
  #  get "index"
  root "user#home"
  get '/user_index' => 'user#index'
  
  get '/user_profile' => 'user#new'
  post '/user_profile'=> 'user#create'

  get '/contractor_profile' => 'contractor#new'
  post '/contractor_profile'=> 'contractor#create'


  get '/worker_profile' => 'worker#new'
  post '/worker_profile'=> 'worker#create'

  get '/all_workers' => 'worker#index'
  get '/all_contractors' => 'contractor#index'

  get '/all_users' => 'user#index'
 
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
