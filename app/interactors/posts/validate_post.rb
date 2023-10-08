# frozen_string_literal: true

module Posts
  class ValidatePost
    include Interactor

    delegate :post, to: :context

    def call
      validate_post
    end

    private

    def validate_post
      unless post.valid?
        context.fail!(error: post.errors.full_messages.join('. '))
      end
    end
  end
end
