class PostsController < ApplicationController
  def show
    @post = Post.first || Post.create(title: "My first post", content: "With enticing content")
  end
end
