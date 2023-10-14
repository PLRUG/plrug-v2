# frozen_string_literal: true

module JobKinds
  class DeleteJobKindOrganizer
    include Interactor::Organizer

    organize FindJobKind, DeleteJobKind
  end
end
