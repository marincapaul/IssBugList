Rails.application.routes.draw do
  get 'developer/show'
  get 'developer/index'
  devise_for :developers
  get 'tester/show'
  get 'tester/index'
  devise_for :testers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#home'
  get :test, to: 'pages#test'
  # resources :owners do
  #   collection do
  #     get '/:id/edit_profile' => 'owners#edit_profile', as: :edit_profile
  #     put '/:id/update_profile' => 'owners#update_profile', as: :update_profile
  #   end
    
  # end

  

  # Defines the root path route ("/")
  # root "articles#index"
  
  # Defines the root path route ("/")
  # root "articles#index"
end
