# frozen_string_literal: true

module Cities
  class ValidateCity
    include Interactor

    delegate :city, to: :context

    def call
      validate_city
    end

    private

    def validate_city
      unless city.valid?
        context.fail!(error: city.errors.full_messages.join('. '))
      end
    end
  end
end