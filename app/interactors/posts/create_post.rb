# frozen_string_literal: true

module Posts
  class CreatePost
    include Interactor

    delegate :params, to: :context

    def call
      create_post
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end

    private

    def create_post
      context.post = Post.create!(params)
    end
  end
end
