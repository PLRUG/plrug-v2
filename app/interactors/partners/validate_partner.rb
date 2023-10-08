# frozen_string_literal: true

module Partners
  class ValidatePartner
    include Interactor

    delegate :partner, to: :context

    def call
      validate_partner
    end

    private

    def validate_partner
      unless partner.valid?
        context.fail!(error: partner.errors.full_messages.join('. '))
      end
    end
  end
end
