# frozen_string_literal: true

module Posts
  class IncrementPostViews
    include Interactor

    delegate :post, to: :context

    def call
      increment_views
    end

    private

    def increment_views
      post.increment!(:views)
      post.reload
    end
  end
end
