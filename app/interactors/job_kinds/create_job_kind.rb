# frozen_string_literal: true

module JobKinds
  class CreateJobKind
    include Interactor

    delegate :params, to: :context

    def call
      create_job_kind
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def create_job_kind
      context.job_kind = Content::JobKind.create!(params)
    end
  end
end
