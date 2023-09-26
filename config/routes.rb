# frozen_string_literal: true

Rails.application.routes.draw do
  
  # Authentication
  # @implemented
  devise_for :users

  # Application
  # @implemented
  root to: 'home#index'
  resources :jobs
  resources :newsletters, only: [:create]
  resources :radars, only: [:index]
end
