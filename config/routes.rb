Rails.application.routes.draw do

  resources :newspapers do 
    collection { post :import }
    get '/home', to: 'newspapers#home'
  end

  namespace :admin do
    resources :users
  end

  resources :users

  resources :sessions, only: [:create, :destroy]

  post '/newspapers/filter', to: 'newspapers#filter'

  root to: "newspapers#home"

end
