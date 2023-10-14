# frozen_string_literal: true

module Groups
  class UpdateGroup
    include Interactor

    delegate :group, :params, to: :context

    def call
      update_group
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def update_group
      group.update!(params)
      group.reload
    end
  end
end
