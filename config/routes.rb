Rails.application.routes.draw do
  resources :coupons, only: [:index, :show, :new, :create]
  
end
