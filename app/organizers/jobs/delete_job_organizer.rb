# frozen_string_literal: true

module Jobs
  class DeleteJobOrganizer
    include Interactor::Organizer

    organize FindJob, ValidateJob, DeleteJob
  end
end
