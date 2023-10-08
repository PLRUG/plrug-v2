# frozen_string_literal: true

module Users
  class CreateReferralLink
    include Interactor

    delegate :user, to: :context

    def call
      user.referral_link = generate_referral_link
      user.save!
    rescue StandardError::Error => e
      context.fail!(error: e.message)
    end

    private

    def generate_referral_link
      "app.onrop.pl/r/#{username}_#{generate_unique_token}"
    end

    def generate_unique_token
      SecureRandom.urlsafe_base64(6)
    end

    def username
      user.username
    end
  end
end
