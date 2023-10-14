# frozen_string_literal: true

module BillingTypes
  class UpdateBillingType
    include Interactor

    delegate :billing_type, :params, to: :context

    def call
      update_billing_type
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def update_billing_type
      billing_type.update!(params)
      billing_type.reload
    end
  end
end
