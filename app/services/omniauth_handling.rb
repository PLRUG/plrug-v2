# frozen_string_literal: true

module OmniauthHandling
  include ActiveSupport::Concern

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.uid      = auth.uid
      user.provider = auth.provider
      user.name     = auth.info.name
      user.email    = auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
