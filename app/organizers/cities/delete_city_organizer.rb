# frozen_string_literal: true

module Cities
  class DeleteCityOrganizer
    include Interactor::Organizer

    organize FindCity, DeleteCity
  end
end
