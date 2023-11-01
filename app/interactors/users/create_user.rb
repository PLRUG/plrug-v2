# frozen_string_literal: true

module Users
  class CreateUser
    include Interactor

    delegate :params, to: :context

    def call
      create_user
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def create_user
      context.user = User::User.create!(params)
    end
  end
end
