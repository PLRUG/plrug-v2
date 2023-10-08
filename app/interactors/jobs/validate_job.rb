# frozen_string_literal: true

module Jobs
  class ValidateJob
    include Interactor

    delegate :job, to: :context

    def call
      validate_job
    end

    private

    def validate_job
      unless job.valid?
        context.fail!(error: job.errors.full_messages.join('. '))
      end
    end
  end
end
