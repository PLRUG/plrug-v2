# frozen_string_literal: true

module Jobs
  class ExpireRenewJobOrganizer
    include Interactor::Organizer

    organize FindJob, ExpireRenewJob
  end
end
