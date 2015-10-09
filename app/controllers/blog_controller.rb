class BlogController < ApplicationController

  layout "blog"

  def index
    @posts = Post.all.first(10)
  end

  def show
    @post = Post.find_by :id => params[:id]
    @post_comment = PostComment.new
    @comments = @post.post_comments
  end
end
