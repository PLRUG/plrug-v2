# frozen_string_literal: true

module Groups
  class UpdateGroupOrganizer
    include Interactor::Organizer

    organize FindGroup, UpdateGroup
  end
end
