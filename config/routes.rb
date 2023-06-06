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
  get :add_bug, to: 'pages#bug_form'
  post :add_bug, to: 'bugs#create'
  put "/update_status" => 'bugs#update_status'
  resources :bugs do
    collection do
      put ":id/update" => 'bugs#update', as: :update
    end
  end

   
  

  # Defines the root path route ("/")
  # root "articles#index"
  
  # Defines the root path route ("/")
  # root "articles#index"
end
