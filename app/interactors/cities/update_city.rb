# frozen_string_literal: true

module Cities
  class UpdateCity
    include Interactor

    delegate :city, :params, to: :context

    def call
      update_city
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def update_city
      city.update!(params)
      city.reload
    end
  end
end