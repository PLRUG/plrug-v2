# frozen_string_literal: true

class Posts < ApplicationController
  def index; end

  def show; end

  private

    def set_post
      @post = Post.find(params[:id])
    end
end