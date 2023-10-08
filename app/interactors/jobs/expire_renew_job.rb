# frozen_string_literal: true

module Jobs
  class ExpireRenewJob
    include Interactor

    delegate :job, to: :context

    def call
      toggle_status_and_reload_job
    rescue StandardError => e
      context.fail!(error: e.message)
    end

    private

    def toggle_status_and_reload_job
      status = (job.active? ? 'expired' : 'active')
      job.update(status: status)
      job.reload
    end
  end
end
