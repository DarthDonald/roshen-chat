Rails.application.routes.draw do

  namespace :api do

    resource :user, only: [:create, :update]

    resource :session, only: [:create, :destroy]

  end

end
