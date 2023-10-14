# frozen_string_literal: true

module Newsletters
  class UpdateNewsletter
    include Interactor

    delegate :newsletter, :params, to: :context

    def call
      update_newsletter
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def update_newsletter
      newsletter.update!(params)
      newsletter.reload
    end
  end
end
