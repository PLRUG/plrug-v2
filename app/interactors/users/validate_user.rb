# frozen_string_literal: true

module Users
  class ValidateUser
    include Interactor

    delegate :user, to: :context

    def call
      validate_user
    end

    private

    def validate_user
      unless user.valid?
        context.fail(error: post.errors.full_messages.join('. '))
      end
    end
  end
end
