# frozen_string_literal: true

module Newsletters
  class DeleteNewsletterOrganizer
    include Interactor::Organizer

    organize FindNewsletter, DeleteNewsletter
  end
end
