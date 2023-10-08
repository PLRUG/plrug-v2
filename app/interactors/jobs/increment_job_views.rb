# frozen_string_literal: true

module Jobs
  class IncrementJobViews
    include Interactor

    delegate :job, to: :context

    def call
      increment_views
    end

    private

    def increment_views
      job.increment!(:views)
      job.reload
    end
  end
end
