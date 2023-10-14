# frozen_string_literal: true

module Users
  class UpdateUser
    include Interactor

    delegate :user, to: :context

    def call
      update_user
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def update_user
      user.update!(params)
      user.reload
    end
  end
end