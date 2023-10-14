# frozen_string_literal: true

module Countries
  class DeleteCountry
    include Interactor

    delegate :country, to: :context

    def call
      delete_country
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def delete_country
      country.delete!
    end
  end
end