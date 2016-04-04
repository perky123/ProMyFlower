Rails.application.routes.draw do
  # resources:tabusers do
  #   get 'register'
  # end
  # get 'tbusers/index'
  # get "register"
  # end
  # # get 'welcome/index'
  # # get 'register'
  # # The priority is based upon order of creation: first created -> highest priority.
  # # See how all your routes lay out with "rake routes".

  # # You can have the root of your site routed with "root"
  # root 'tbusers#index'
  # resources:tabusers do
  #   get 'register' => 'tabusers#new', :as => :register
  # end
  get 'tabusers/register' => 'tabusers#register'
  get 'tabusers/registerUser' => 'tabusers#registerUser'
  get 'tabusers/login' => 'tabusers#login'
  get 'tabflowers/show'=>'tabflowers#show'
  get 'tabflowers/addcart'=>'tabflowers#addcart'
  get 'tabflowers/checkout'=>'tabflowers#checkout'
  get 'tabflowers/emptyFlower'=>'tabflowers#emptyFlower'
  get 'tabflowers/tjFriends'=>'tabflowers#tjFriends'
  get 'tabusers/exit' => 'tabusers#exit'
  get 'tabflowers/JZ'=>'tabflowers#JZ'
  get'tabflowers/search'=>'tabflowers#search'
  get'tabflowers/deleteFlower'=>'tabflowers#deleteFlower'
  get'tabflowers/updatecart'=>'tabflowers#updatecart'
  # get "tabuser/register"
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  resources :tabflowers
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end