class MainController < ApplicationController
  def index
    @products = Product.all
    @caurusel_img = CauruselImage.all
    @posts = Post.all.first(2)
  end


end

