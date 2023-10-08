# frozen_string_literal: true

module Newsletters
  class DeleteNewsletter
    include Interactor

    delegate :newsletter, to: :context

    def call
      delete_newsletter
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def delete_newsletter
      newsletter.destroy!
    end
  end
end
