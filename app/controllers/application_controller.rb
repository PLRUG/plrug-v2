# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :track_visitor
  around_action :switch_locale

  # Switch the application's locale based on the user's choice or the default locale.
  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  private

  # Get the original path the user came from or default root path.
  def original_path
    request.referrer || root_path
  end

  # Create a Ransack search query for a model based on parameters
  def ransack_search_for(model, params)
    @q = model.send(:ransack, params[:q])
  end

  # Track the visitor's session IP address for use indentification.
  def track_visitor
    session_ip = request.remote_ip
    session[:session_ip] = session_ip
  end
end
