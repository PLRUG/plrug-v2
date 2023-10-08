# frozen_string_literal: true

module Partners
  class DeletePartnerOrganizer
    include Interactor::Organizer

    organize FindPartner, DeletePartner
  end
end
