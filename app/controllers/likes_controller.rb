class LikesController < ApplicationController
  before_action :set_post, only: %w[create destroy]

  def create
    respond_to do |format|
      Current.user.likes.create(post: @post)

      format.html { redirect_to root_path }
      format.turbo_stream
    end
  end

  def destroy
    respond_to do |format|
      Current.user.likes.find_by(post: @post).destroy

      format.html { redirect_to root_path }
      format.turbo_stream
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
