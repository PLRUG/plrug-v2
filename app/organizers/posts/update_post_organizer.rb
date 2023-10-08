# frozen_string_literal: true

module Posts
  class UpdatePostOrganizer
    include Interactor::Organizer

    organize FindPost, UpdatePost
  end
end
