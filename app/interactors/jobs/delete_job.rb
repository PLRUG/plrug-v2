# frozen_string_literal: true

module Jobs
  class DeleteJob
    include Interactor

    delegate :job, to: :context

    def call
      delete_job
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def delete_job
      job.destroy!
    end
  end
end
