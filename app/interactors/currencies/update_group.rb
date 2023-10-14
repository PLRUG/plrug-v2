# frozen_string_literal: true

module Currencies
  class UpdateCurrency
    include Interactor

    delegate :currency, :params, to: :context

    def call
      update_currency
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def update_currency
      currency.update!(params)
      currency.reload
    end
  end
end