Rails.application.routes.draw do  
  root :to => 'web/boards#show'

  scope module: :web do
    resources :developers, only: [:new, :create]
    resource :session, only: [:new, :create, :destroy]
    resource :board, only: :show
  end

  namespace :admin do
    resources :users
  end
end
