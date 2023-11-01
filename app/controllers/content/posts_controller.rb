# frozen_string_literal: true

module Content
  class PostsController < ApplicationController
    before_action :set_post, only: [:show]
    before_action -> { ransack_search_for(Content::Post, params) }

    # GET /posts/
    def index
      @posts = @q.result(distinct: true)
                 .includes(:user).order(created_at: :desc)
                 .page(params[:page])
                 .per(6)
    end

    # GET /posts/:id
    def show; end

    private

    def set_post
      @post = Content::Post.friendly.find(params[:id])
    end
  end
end
