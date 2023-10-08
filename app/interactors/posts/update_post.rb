# frozen_string_literal: true

module Posts
  class UpdatePost
    include Interactor

    delegate :post, to: :context

    def call
      update_post
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def update_post
      post.update(params)
      post.reload
    end
  end
end
