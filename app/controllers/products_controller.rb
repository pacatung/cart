class ProductsController < ApplicationController

  def index
    @products = Product.all.limit(50)
  end

  def show
    @product = Product.find(params[:id])
  end

end
