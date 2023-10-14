# frozen_string_literal: true

module Countries
  class FindContry
    include Interactor

    delegate :id, to: :context

    def call
      find_country
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def find_country
      context.country = Country.find(id)
    end
  end
end
