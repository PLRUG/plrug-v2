# frozen_string_literal: true

module Newsletters
  class ValidateNewsletter
    include Interactor

    delegate :newsletter, to: :context

    def call
      validate_newsletter
    end

    private

    def validate_newsletter
      unless newsletter.valid?
        context.fail!(error: newsletter.errors.full_messages.join('. '))
      end
    end
  end
end
