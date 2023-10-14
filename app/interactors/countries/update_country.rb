# frozen_string_literal: true

module Countries
  class UpdateCountry
    include Interactor

    delegate :country, :params, to: :context

    def call
      update_country
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def update_country
      country.update!(params)
      country.reload
    end
  end
end