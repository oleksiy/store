Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "products#index"

  get "/products", to: "products#index", as: "products"

  # create a new product
  post "/products", to: "products#create", as: "product_create_by_post"
  get "/products/new", to: "products#new", as: "product_new"
  
  # get a product by id or name - when you refer to these in erb files, you have to match the alias you used in the as:
  get "/products/:id", to: "products#show", as: "product"
  get "/products/:name", to: "products#show", as: "product_show_by_name"
  
  # update a product
  get "/products/:id/edit", to: "products#edit", as: "products_edit_by_id"
  patch "/products/:id", to: "products#update", as: "products_update_by_id_patch"
  put "/products/:id", to: "products#update", as: "products_update_by_id_put"
  
  # delete a product
  delete "/products/:id", to: "products#destroy", as: "products_destroy"

  # to do all of the above in one line, you can use the following:
  # resources :products
end
