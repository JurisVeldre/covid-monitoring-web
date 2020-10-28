# frozen_string_literal: true

Rails.application.routes.draw do
  resources :institutions, only: [:index, :show]
  resources :rooms, only: :show
end
