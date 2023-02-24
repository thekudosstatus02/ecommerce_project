Rails.application.routes.draw do
  resources :line_items
  resources :carts
  root 'gallery#index'
  get 'gallery/search'
  post 'gallery/search'
  get 'gallery/purchase'
  get 'gallery/checkout'
  post 'gallery/checkout'
  get 'gallery/index'
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  post 'admin/logout'
  get 'home/index'
  devise_for :users
  resources :stores do
    member do
      delete :delete_file
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
