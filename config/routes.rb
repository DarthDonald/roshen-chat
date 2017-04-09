Rails.application.routes.draw do

  namespace :api do

    resources :users, only: [:create, :update, :index]

    resource :session, only: [:create, :destroy]

    resources :chats, only: [:create, :update, :destroy, :index]

    resources :messages, only: [:create, :update, :destroy, :index]

  end

end
