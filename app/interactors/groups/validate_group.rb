# frozen_string_literal: true

module Groups
  class ValidateGroup
    include Interactor

    delegate :group, to: :context

    def call
      validate_group
    end

    private

    def validate_group
      unless group.valid?
        context.fail(error: group.errors.full_messages.join('. '))
      end
    end
  end
end