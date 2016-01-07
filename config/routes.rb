Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users do
        resources :lists
      end

      resources :lists, only: [] do
        resources :prayer_requests, only: [:create, :update]
      end

      resources :prayer_requests, only: [:destroy]
    end
  end
  
end
