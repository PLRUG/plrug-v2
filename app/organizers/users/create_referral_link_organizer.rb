# frozen_string_literal: true

module Users
  class CreateReferralLinkOrganizer
    include Interactor::Organizer

    organize FindUser, CreateReferralLink
  end
end
