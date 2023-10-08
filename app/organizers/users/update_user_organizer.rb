# frozen_string_literal: true

module Users
  class UpdateUserOrganizer
    include Interactor::Organizer

    organize FindUser, UpdateUser
  end
end
