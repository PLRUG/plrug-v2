# frozen_string_literal: true

module JobKinds
  class UpdateJobKind
    include Interactor

    delegate :job_kind, :params, to: :context

    def call
      update_job_kind
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def update_job_kind
      job_kind.update!(params)
      job_kind.reload
    end
  end
end
