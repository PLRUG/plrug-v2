# frozen_string_literal: true

module Jobs
  class UpdateJob
    include Interactor

    delegate :job, :params, to: :context

    def call
      update_job
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def update_job
      job.update(params)
      job.reload
    end
  end
end
