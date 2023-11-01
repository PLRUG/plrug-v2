# frozen_string_literal: true

module Newsletters
  class UpdateNewsletterOrganizer
    include Interactor::Organizer

    organize FindNewsletter, UpdateNewsletter, ToggleNewsletterStatus
  end
end
