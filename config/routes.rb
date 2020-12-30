# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :users

  root to: 'institutions#index'

  resources :institutions, except: :destroy do
    scope module: :institutions do
      resources :rooms, except: :destroy
    end
  end

  get '/api/:id', to: 'api#show'
end
