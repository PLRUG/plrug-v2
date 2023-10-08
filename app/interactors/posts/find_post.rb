# frozen_string_literal: true

module Posts
  class FindPost
    include Interactor

    delegate :id, to: :context

    def call
      find_post
    rescue ActiveRecord::RecordNotFound => e
      context.fail!(error: e.message)
    end

    private

    def find_post
      context.post = Post.find(id)
    end
  end
end
