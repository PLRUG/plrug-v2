# frozen_string_literal: true

module Newsletters
  class CreateNewsletter
    include Interactor

    delegate :params, to: :context

    def call
      create_newsletter
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def create_job
      context.newsletter = Newsletter.create!(params)
    end
  end
end
