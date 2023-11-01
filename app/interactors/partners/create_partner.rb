# frozen_string_literal: true

module Partners
  class CreatePartner
    include Interactor

    delegate :params, to: :context

    def call
      create_partner
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def create_partner
      context.partner = Marketing::Partner.create!(params)
    end
  end
end
