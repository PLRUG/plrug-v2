# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :ransack_search

  def ransack_search()  
  end
end
