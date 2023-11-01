# frozen_string_literal: true

module Newsletters
  class FindNewsletter
    include Interactor

    delegate :id, to: :context

    def call
      find_newsletter
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def find_newsletter
      context.job = Marketing::Newsletter.find(id)
    end
  end
end
