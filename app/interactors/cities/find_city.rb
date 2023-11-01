# frozen_string_literal: true

module Cities
  class FindCity
    include Interactor

    delegate :id, to: :context

    def call
      find_city
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def find_city
      context.city = Location::City.find(id)
    end
  end
end
