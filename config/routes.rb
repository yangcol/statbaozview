Rails.application.routes.draw do
  # 默认情况下，url不能使用. 因为.因为点号是格式化路由的分隔符。如果需要在 :id 中使用点号，可以添加一个约束条件。例如，id: /[^\/]+/ 可以接受除斜线之外的所有字符。
  get 'slowlogs/:name,:key,:duration,:date' => 'slowlogs#show', :name => /[^\/]+/

  get 'servermeans/:name,:key,:duration,:date' => 'servermeans#show', :name => /[^\/]+/

  get 'serverpvs/:name,:key,:duration,:date' => 'serverpvs#show', :name => /[^\/]+/

  get 'slowlogexts/:name,:key,:duration,:date' => 'slowlogexts#show', :name => /[^\/]+/

  resources :slowlogexts

  resources :servermeans

  resources :serverpvs

  resources :slowlogs

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
