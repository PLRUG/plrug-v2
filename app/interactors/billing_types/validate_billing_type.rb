# frozen_string_literal: true

module BillingTypes
  class ValidateBillingType
    include Interactor

    delegate :billing_type, to: :context

    def call
      validate_billing_type
    end

    private

    def validate_billing_type
      unless billing_type.valid?
        context.fail!(error: billing_type.errors.full_messages.join('. '))
      end
    end
  end
end
