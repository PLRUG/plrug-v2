# frozen_string_literal: true

module Jobs
  class ToggleJobStatus
    include Interactor

    delegate :job, to: :context

    def call
      toggle_status_and_reload_job
    rescue StandardError => e
      context.fail!(error: e.message)
    end

    private

    def toggle_status_and_reload_job
      renew_limit_error if job_renew_limit_reached

      status = (job.active? ? 'expired' : 'active')
      job.update(status: status)
      job.increment!(:renew_counter)
      job.reload
    end

    def reached_renew_limit_error
      context.fail!(error: 'Job has reached the maximum renewal limit.')
    end

    def renew_limit_error
      job.renew_counter >= 3
    end
  end
end
