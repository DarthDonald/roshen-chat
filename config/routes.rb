Rails.application.routes.draw do

  namespace :api do
    resources :products, only: [:index, :show]
    resource :user, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :purchases do
      resource :drop, only: [:create]
    end
  end

end
