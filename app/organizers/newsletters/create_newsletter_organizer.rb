# frozen_string_literal: true

module Newsletters
  class CreateNewsletterOrganizer
    include Interactor::Organizer

    organize CreateNewsletter, ToggleNewsletterStatus
  end
end
