Kabudata::Application.routes.draw do

  resources :reports


  resources :blogs


  resources :comments


  resources :consultants do
    collection do
      post :search
    end
  end


  resources :toushikomon_boards


  resources :pieces


  resources :stocks do
    member do
      get :market, :number, :industry
    end
    collection do
      post :search
    end
  end


  resources :toushikomons


  resources :glossaries


  resources :beginners


  resources :stock

  resources :piece

  resources :blogs do
    member do
      get :count_in, :out
    end
  end

  resources :boards do
    member do
      post :post_comment
      get :delete_comment
    end
    collection do
      get 'list'
    end
  end
  get "page/piece"
  resources :welcome
  root :to => 'welcome#index'
  get "page/address_index"
  get "page/regulation"
  get "page/consultant"
  get "page/brokerage"
  get "page/inquiry"
  get "page/rise"
  get "page/index"

  get "page/inquiry"
  get "page/kiyaku"
  get "page/about"
  get "page/menseki"
  get "page/sitemap"

  get "page/sitemap"
  post "page/register_address"
  match ':controller(/:action(/:id))(.:format)'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
