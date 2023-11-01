# frozen_string_literal: true

module Jobs
  class FindJob
    include Interactor

    delegate :id, to: :context

    def call
      find_job
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def find_job
      context.job = Content::Job.friendly.find(id)
    end
  end
end
