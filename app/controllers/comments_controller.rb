# frozen_string_literal: true

class CommentsController < ApplicationController
  def comment_create
    comment_create = Comment.new()
    comment_create.comments = params[:comments]
    if comment_create.save
      render json: { comment_create: comment_create }
    else
      render json: { error: comment_create.errors.full_messages }
    end
  end
end
