Rails.application.routes.draw do
  # HTML
  # get "/photos" => "photos#index"

  # JSON
  namespace :api do
    # USER ROUTES -------------------------------------->

    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "users/:id" => "users#update"

    #ITEM ROUTES --------------------------------------->

    get "/items" => "items#index"
    post "/items" => "items#create"
    get "/items/:id" => "items#show"
    patch "/items/:id" => "items#update"
    delete "/items/:id" => "items#destroy"

    #LOCATION ROUTES ----------------------------------->

    get "/locations" => "locations#index"
    post "/locations" => "locations#create"
    get "/locations/:id" => "locations#show"
    patch "/locations/:id" => "locations#update"
    delete "/locations/:id" => "locations#destroy"

    #LISTS ROUTES -------------------------------------->

    get "/lists" => "lists#index"
    post "/lists" => "lists#create"
    get "/lists/:id" => "lists#show"
    patch "/lists/:id" => "lists#update"
    delete "/lists/:id" => "lists#destroy"

    #EXPIRATION ROUTES --------------------------------->

    get "/expirations" => "expirations#index"
    post "/expirations" => "expirations#create"
    get "/expirations/:id" => "expirations#show"
    patch "/expirations/:id" => "expirations#update"
    delete "/expirations/:id" => "expirations#destroy"
  end
end
