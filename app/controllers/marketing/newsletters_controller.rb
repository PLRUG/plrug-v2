# frozen_string_literal: true

module Marketing
  class NewslettersController < ApplicationController

    # POST /newsletters/
    def create
      newsletter = Newsletter.find_or_initialize_by(newsletter_params)

      flash[:notice] = if newsletter.save
                         'Newsletter Signup with success.'
                       else
                         'Failed to signup in our newsletter, try again.'
                       end

      redirect_to original_path
    end

    private

    def newsletter_params
      params.require(:marketing_newsletter).permit(:email)
    end
  end
end
