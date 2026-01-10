Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products", to: "products#index"

  # create a new product
  post "/products", to: "products#create"
  get "/products/new", to "products#create"
  
  # get a product by id or name
  get "/products/:id", to: "products#show"
  get "/products/:name", to: "products#show"
  
  # update a product
  get "/products/:id/edit", to: "products#edit"
  patch "/products/:id", to: "products#update"
  put "/products/:id", to: "products#update"
  
  # delete a product
  delete "/products/:id", to: "products#destroy"

  # to do all of the above in one line, you can use the following:
  # resources :products
end
