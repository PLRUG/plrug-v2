# frozen_string_literal: true

module BillingTypes
  class DeleteBillingType
    include Interactor

    delegate :billing_type, to: :context

    def call
      delete_billing_type
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def delete_billing_type
      billing_type.destroy!
    end
  end
end