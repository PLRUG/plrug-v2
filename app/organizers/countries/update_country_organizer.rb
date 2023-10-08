# frozen_string_literal: true

module Countries
  class UpdateCountryOrganizer
    include Interactor::Organizer

    organize FindCountry, UpdateCountry
  end
end
