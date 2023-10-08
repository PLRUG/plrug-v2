# frozen_string_literal: true

module Partners
  class DeletePartner
    include Interactor

    delegate :partner, to: :context

    def call
      delete_partner
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def delete_partner
      partner.destroy!
    end
  end
end
