Rails.application.routes.draw do
  resources :coupons, only: [:index, :show, :create, :new]
end