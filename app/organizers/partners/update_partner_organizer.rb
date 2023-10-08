# frozen_string_literal: true

module Partners
  class UpdatePartnerOrganizer
    include Interactor::Organizer

    organize FindPartner, UpdatePartner
  end
end
