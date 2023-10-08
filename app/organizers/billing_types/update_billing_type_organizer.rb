# frozen_string_literal: true

module BillingTypes
  class UpdateBillingTypeOrganizer
    include Interactor::Organizer

    organize FindBillingType, UpdateBillingType
  end
end
