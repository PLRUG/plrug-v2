# frozen_string_literal: true

module Currencies
  class ValidateCurrency
    include Interactor

    delegate :currency, to: :context

    def call
      validate_currency
    end

    private

    def validate_currency
      unless currency.valid?
        context.fail!(error: currency.errors.full_messages.join('. '))
      end
    end
  end
end
