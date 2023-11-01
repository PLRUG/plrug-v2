# frozen_string_literal: true

module Users
  class FindUser
    include Interactor

    delegate :id, to: :context

    def call
      find_user
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def find_user
      context.user = User::User.find(id)
    end
  end
end
