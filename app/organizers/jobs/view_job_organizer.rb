# frozen_string_literal: true

module Jobs
  class ViewJobOrganizer
    include Interactor::Organizer

    organize FindJob, IncrementJobVisits, IncrementJobViews
  end
end
