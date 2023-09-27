# frozen_string_literal: true

Rails.application.routes.draw do
  
  # Authentication
  # @implemented
  devise_for :users

  # Application
  # @implemented
  root to: 'home#index'

  resources :posts, only: [:index, :show]
  resources :jobs do
    member do
      post 'renew'  => 'jobs#renew'
      post 'expire' => 'jobs#expire'
    end
  end

  get 'refer' => 'refers#index'
  resources :newsletters, only: [:create]
  resources :radars, only: [:index]
end
