# frozen_string_literal: true

module BillingTypes
  class CreateBillingType
    include Interactor

    delegate :params, to: :context

    def call
      create_billing_type
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def create_billing_type
      context.billing_type = BillingType.create!(params)
    end
  end
end