# frozen_string_literal: true
Rails.application.routes.draw do
  post '/places' => 'places#create'
  get '/places' => 'places#index'
  patch '/places/:id' => 'places#update'
  delete '/places/:id' => 'places#destroy'
  resources :places, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
