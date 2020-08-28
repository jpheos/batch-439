Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :new, :create, :show]

  root to: 'pages#home'
end
