# frozen_string_literal: true

module Countries
  class DeleteCountryOrganizer
    include Interactor::Organizer

    organize FindCountry, DeleteCountry
  end
end
