# frozen_string_literal: true

Rails.application.routes.draw do
  
  # Root
  # @implemented
  root to: 'company/home#index'

  # Authentication
  # @implemented
  devise_for :users, class_name: 'User::User'

  # Application
  # @implemented
  namespace :company, path: '/' do
    get  'contact' => 'contacts#index'
    post 'contact' => 'contacts#create'

    # get 'privacy'  => 'privacy#index'
    # get 'terms'    => 'terms#index'
  end

  # Community
  # @implemented
  namespace :community, path: '/' do
    resources :companies, only: %i[index show]
    # resources :events do
    #   resources :talks do
    #     member do
    #       post 'vote' => 'vote#create'
    #       delete 'vote/:id' => 'vote#destroy'
    #     end
    #   end
    # end
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

    # resources :paths, only: %i[index]
    # resources :posts, only: %i[index show]
  end

  # Marketing
  # @implemented
  # namespace :marketing, path: '/' do
  #   resources :newsletters, only: %i[create]
  #   resources :partners, only: %i[create]

  #   get 'refer' => 'refers#index'
  # end

  # Analytics
  # @implemented
  # namespace :analytic, path: '/' do
  #   resources :radars, only: %i[index]
  # end

  # API
  # @implemented
  namespace :api, constraint: { subdomain: 'api' } do
    namespace :v1 do
      defaults format: :json do
        # Some JSON from here
      end
    end

    namespace :v2 do
      defaults format: :xml do
        # Some XML from Here
      end
    end
  end
end
