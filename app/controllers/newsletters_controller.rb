# frozen_string_literal: true

class NewslettersController < ApplicationController
  
  # POST /newsletters/
  def create
    newsletter = Newsletter.find_or_initialize_by(newsletter_params)

    if newsletter.save
      flash[:notice] = 'Newsletter Signup with success.'
      redirect_to original_path
    else
      flash[:notice] = 'Failed to signup in our newsletter, try again.'
      redirect_to original_path
    end
  end

  private

    def newsletter_params
      params.require(:newsletter).permit(:email)
    end
end