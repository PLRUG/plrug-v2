# frozen_string_literal: true

module Currencies
  class DeleteCurrency
    include Interactor

    delegate :currency, to: :context

    def call
      delete_currency
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def delete_currency
      currency.destroy!
    end
  end
end