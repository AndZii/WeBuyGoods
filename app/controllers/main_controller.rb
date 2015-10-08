class MainController < ApplicationController
  def index
    @products = Product.all
    @caurusel_img = CauruselImage.all


  end
end
