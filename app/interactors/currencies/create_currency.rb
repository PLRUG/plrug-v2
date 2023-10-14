# frozen_string_literal: true

module Currencies
  class CreateCurrency
    include Interactor

    delegate :params, to: :context

    def call
      create_currency
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def create_currency
      context.currency = Currency.create!(params)
    end
  end
end
