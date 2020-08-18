Rails.application.routes.draw do
  devise_for :users

  resources :restaurants

  root to: 'pages#home'
end
