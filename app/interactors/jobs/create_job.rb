# frozen_string_literal: true

module Jobs
  class CreateJob
    include Interactor

    delegate :params, :user, to: :context

    def call
      create_job
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def create_job
      context.job = user.jobs.create!(params)
    end
  end
end
