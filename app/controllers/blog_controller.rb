class BlogController < ApplicationController

  layout "blog"

  def index
    @posts = Post.all.first(10)
  end

  def show

  end
end
