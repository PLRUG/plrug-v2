# frozen_string_literal: true

module Groups
  class DeleteGroup
    include Interactor

    delegate :group, to: :context

    def call
      delete_group
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def delete_group
      group.destroy!
    end
  end
end
