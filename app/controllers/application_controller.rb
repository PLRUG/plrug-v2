# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :track_visitor

  private

    def original_path
      request.referrer || root_path
    end

    def ransack_search_for(model, params)
      @q = model.send(:ransack, params[:q])
    end

    def track_visitor
      session_ip = request.remote_ip
      session[:session_ip] = session_ip
    end
end
