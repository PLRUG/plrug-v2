# frozen_string_literal: true

module Cities
  class CreateCity
    include Interactor

    delegate :params, to: :context

    def call
      create_city
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def create_city
      context.city = City.create!(params)
    end
  end
end
