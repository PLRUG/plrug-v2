# frozen_string_literal: true

module BillingTypes
  class DeleteBillingTypeOrganizer
    include Interactor::Organizer

    organize FindBillingType, DeleteBillingType
  end
end

