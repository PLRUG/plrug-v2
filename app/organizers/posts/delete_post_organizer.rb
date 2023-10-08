# frozen_string_literal: true

module Posts
  class DeletePostOrganizer
    include Interactor::Organizer

    organize FindPost, DeletePost
  end
end
