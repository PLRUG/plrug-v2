# frozen_string_literal: true

module Newsletters
  # This class is responsible for toggling the status of a user'newlsetter subscription.
  class ToggleNewsletterStatus
    include Interactor

    delegate :newsletter, to: :context

    # Toggles the user's newsletter subscription status
    def call
      if newsletter.active?
        inactivate_newsletter
      else
        activate_newsletter
      end
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    # Actives the newsletter subscription
    def activate_newsletter
      newsletter.update!(status: :active, token: generate_token)
    end

    # Inactivates th newsletter subscription
    def inactivate_newsletter
      newsletter.update!(status: :inactive, token: nil)
    end

    # Generates a unique token of 32 characters
    def generate_token
      SecureRandom.urlsafe_base64(32)
    end
  end
end
