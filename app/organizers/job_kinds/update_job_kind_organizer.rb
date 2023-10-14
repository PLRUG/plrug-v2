# frozen_string_literal: true

module JobKinds
  class UpdateJobKindOrganizer
    include Interactor::Organizer

    organize FindJobKind, UpdateJobKind
  end
end
