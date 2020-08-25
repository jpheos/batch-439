Rails.application.routes.draw do
  devise_for :users

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: [:index, :show, :update, :create, :destroy]
    end
  end

  root to: 'pages#home'
end


# api_v1_restaurants GET    /api/v1/restaurants(.:format)     api/v1/restaurants#index                                                       api/v1/restaurants#index
