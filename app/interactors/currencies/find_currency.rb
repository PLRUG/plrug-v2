# frozen_string_literal: true

module Currencies
  class FindCurrency
    include Interactor

    delegate :id, to: :context

    def call
      find_currency
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def find_currency
      context.currency = Billing::Currency.find(id)
    end
  end
end
