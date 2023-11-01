# frozen_string_literal: true

module Countries
  class CreateCountry
    include Interactor

    delegate :params, to: :context

    def call
      create_country
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def create_country
      context.country = Location::Country.create!(params)
    end
  end
end
