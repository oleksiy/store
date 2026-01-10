Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products", to: "products#index" as: "list all products via GET"

  # create a new product
  post "/products", to: "products#create" as: "create a product via POST"
  get "/products/new", to: "products#create" as: "create a new product"
  
  # get a product by id or name
  get "/products/:id", to: "products#show" as: "retrieve by id"
  get "/products/:name", to: "products#show" as: "retrieve by name"
  
  # update a product
  get "/products/:id/edit", to: "products#edit" as: "edit a product by id"
  patch "/products/:id", to: "products#update" as: "update a product by id"
  put "/products/:id", to: "products#update" as: "update a product by id"
  
  # delete a product
  delete "/products/:id", to: "products#destroy" as: "delete a product by id"

  # to do all of the above in one line, you can use the following:
  # resources :products
end
