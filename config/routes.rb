Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  #root 'welcome#index'
  root 'products#index'

  namespace :admin do
    resources :products
  end

  resources :products do
    member do
      post :add_to_cart
    end
  end

  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :cart_items

end
