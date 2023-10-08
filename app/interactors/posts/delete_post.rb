# frozen_string_literal: true

module Posts
  class DeletePost
    include Interactor

    delegate :post, to: :context

    def call
      delete_post
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def delete_post
      post.destroy!
    end
  end
end
