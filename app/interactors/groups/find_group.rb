# frozen_string_literal: true

module Groups
  class FindGroup
    include Interactor

    delegate :id, to: :context

    def call
      find_group
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def find_group
      context.group = Group.find(id)
    end
  end
end
