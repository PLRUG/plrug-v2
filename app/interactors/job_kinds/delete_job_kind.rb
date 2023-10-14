# frozen_string_literal: true

module JobKinds
  class DeleteJobKind
    include Interactor

    delegate :job_kind, to: :context

    def call
      delete_job_kind
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def delete_job_kind
      job_kind.destroy!
    end
  end
end
