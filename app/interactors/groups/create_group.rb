# frozen_string_literal: true

module Groups
  class CreateGroup
    include Interactor

    delegate :params, to: :context

    def call
      create_group
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def create_group
      context.group = Group.create!(params)
    end
  end
end
