# frozen_string_literal: true

module JobKinds
  class ValidateJobKind
    include Interactor

    delegate :job_kind, to: :context

    def call
      validate_job_kind
    end

    private

    def validate
      unless job_kind.valid?
        context.fail!(error: job_kind.errors.full_messages.join('. '))
      end
    end
  end
end
