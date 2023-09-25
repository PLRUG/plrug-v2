# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  # Application
  root to: 'home#index'
  resources :jobs, only: [:index, :show]
end
