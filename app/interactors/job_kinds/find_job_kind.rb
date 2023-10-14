# frozen_string_literal: true

module JobKinds
  class FindJobKind
    include Interactor

    delegate :id, to: :context

    def call
      find_job_kind
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def find_job_kind
      context.job_kind = JobKind.find(id)
    end
  end
end
