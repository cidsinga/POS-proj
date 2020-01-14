Rails.application.routes.draw do
  root to: 'purchases#index'
   resources :purchases do
     resources :products
   end
 end
