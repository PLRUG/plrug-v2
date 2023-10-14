# frozen_string_literal: true

module Countries
  class ValidateCountry
    include Interactor

    delegate :country, to: :context

    def call
      validate_country
    end

    private

    def validate_country
      unless country.valid?
        context.fail!(error: country.errors.full_messages.join('. '))
      end
    end
  end
end
