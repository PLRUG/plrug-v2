# frozen_string_literal: true

module Cities
  class DeleteCity
    include Interactor

    delegate :city, to: :context

    def call
      delete_city
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def delete_city
      city.destroy!
    end
  end
end