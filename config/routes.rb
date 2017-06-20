Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  #root 'welcome#index'
  root 'products#index'

  namespace :admin do
    resources :products
  end

  resources :products

end
