# frozen_string_literal: true

module Users
  class DeleteUserOrganizer
    include Interactor::Organizer

    organize FindUser, DeleteUser
  end
end
