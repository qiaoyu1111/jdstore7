Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root 'welcome#index'

  namespace :admin do
    resources :products
  end

end
