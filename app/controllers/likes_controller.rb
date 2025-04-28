class LikesController < ApplicationController
  before_action :set_post, only: %w[create destroy]

  def create
    Current.user.likes.create(post: @post)

    redirect_to root_path
  end

  def destroy
    Current.user.likes.find_by(post: @post).destroy

    redirect_to root_path
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
