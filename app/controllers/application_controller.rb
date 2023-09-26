# frozen_string_literal: true

class ApplicationController < ActionController::Base
  
  private

    def original_path
      request.referrer || root_path
    end

    def ransack_search_for(model, params)
      @q = model.send(:ransack, params[:q])
    end
end
