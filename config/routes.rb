Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  get 'about', to: 'static_pages#about'
  get 'partnerships', to: 'static_pages#partnerships'
  get 'privacy', to: 'static_pages#privacy'
  get 'add_balance', to: 'add_balance#balance'
  get 'make_payment', to: 'make_payment#payment'
  get 'update_account', to: 'update_account#update'
  get 'user_profile', to: 'user_profile#profile'
  get 'add_balance', to: 'user_profile#add_balance'

  namespace :agent do
    resources :pages, only: [:show] #add :new, :create, beforehand if you want the agent to be able to add pages to user profile
  end


end
