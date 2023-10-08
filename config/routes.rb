# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'company/home#index'

  # Authentication
  # @implemented
  devise_for :users

  # Application
  # @implemented
  namespace :company, path: '/' do
    get  'contact' => 'contacts#index'
    post 'contact' => 'contacts#create'

    get 'privacy'  => 'privacy#index'
    get 'terms'    => 'terms#index'
  end

  # Content
  # @implemented
  namespace :content, path: '/' do
    resources :jobs do
      member do
        post 'renew'  => 'jobs#renew'
        post 'expire' => 'jobs#expire'
        post 'click'  => 'jobs#click'
      end
    end

    resources :paths, only: %i[index]
    resources :posts, only: %i[index show]
  end

  # Marketing
  # @implemented
  namespace :marketing, path: '/' do
    resources :newsletters, only: %i[create]
    resources :partners, only: %i[create]

    get 'refer' => 'refers#index'
  end

  # Analytics
  # @implemented
  namespace :analytic, path: '/' do
    resources :radars, only: %i[index]
  end
end
