# frozen_string_literal: true

module UserInterface
  extend ActiveSupport::Concern

  def default_avatar
    avatar || 'default.jpg'
  end

  def kind?
    kind.eql?('user') ? 'Developer' : 'Company'
  end

  def create_coordinates
    GeolocationService.new(self).geocode_record
  end

  def create_referral_link
    Users::CreateReferralLinkOrganizer.call(id: id)
  end
end
