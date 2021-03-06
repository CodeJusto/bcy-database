Rails.application.routes.draw do

  get 'pages/index'

  resources :newspapers do 
    collection { post :import }
  end

  namespace :admin do
    resources :users
  end

  resources :users

  resources :sessions, only: [:create, :destroy]

  post '/newspapers/filter', to: 'newspapers#filter'

  root to: "pages#index"

end
