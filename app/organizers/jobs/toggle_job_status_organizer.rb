# frozen_string_literal: true

module Jobs
  class ToggleJobStatusOrganizer
    include Interactor::Organizer

    organize FindJob, ToggleJobStatus
  end
end
