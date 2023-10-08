# frozen_string_literal: true

module Cities
  class UpdateCityOrganizer
    include Interactor::Organizer

    organize FindCity, UpdateCity
  end
end
