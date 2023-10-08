# frozen_string_literal: true

module Groups
  class DeleteGroupOrganizer
    include Interactor::Organizer

    organize FindGroup, DeleteGroup
  end
end
