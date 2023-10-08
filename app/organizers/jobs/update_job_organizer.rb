# frozen_string_literal: true

module Jobs
  class UpdateJobOrganizer
    include Interactor::Organizer

    organize FindJob, ValidateJob, UpdateJob
  end
end
