# frozen_string_literal: true

module Partners
  class UpdatePartner
    include Interactor

    delegate :partner, to: :context

    def call
      update_partner
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def update_partner
      partner.update(params)
      partner.reload
    end
  end
end
