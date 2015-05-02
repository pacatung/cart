class ProductsController < ApplicationController

  def index
    # @products = Product.all.page(params[:id]).per(10)
    @products = Product.page(params[:page]).per(10)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new

  end

  def create

  end

  def method_name

  end

end
