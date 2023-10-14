# frozen_string_literal: true

module BillingTypes
  class FindBillingType
    include Interactor

    delegate :id, to: :context

    def call
      find_billing_type
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def find_billing_type
      context.billing_type = BillingType.find(id)
    end
  end
end
