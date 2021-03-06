Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    #index
    get '/contacts' => 'contacts#index'

    #show specific
    get '/contacts/:id' => 'contacts#show'

    #create
    post '/contacts'  => 'contacts#create'

    #update
    patch '/contacts/:id' => 'contacts#update'

    #delete
    delete 'contacts/:id' => 'contacts#destroy'

    #users
    post "/users" => "users#create"

    #sessions
    post "/sessions" => "sessions#create"
  end
end
