# frozen_string_literal: true

module Users
  class DeleteUser
    include Interactor

    delegate :user, to: :context

    def call
      delete_user
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def delete_user
      user.destroy!
    end
  end
end
