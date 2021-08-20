Rails.application.routes.draw do
  devise_for :users
  resources :product1s

  root 'product1s#index'
  get 'product1s/new'
  get 'product1s/edit'
  get 'product1s/update'
  get 'product1s/destroy'
  get 'product1s/create'
  get 'product1s/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
