class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def new
    @product = Product.new
  end

  def index
    @products = Product.all
  end

  def show
  end

  def edit
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_path(@product)
  end

  def update
    @product.update(product_params)
    redirect_to produt_path(@product)
  end

  private

    def product_params
      params.require(:product).permit(:description,:price,:quantity)
    end

    def set_product
      @product = Product.find(params[:id])
    end
  end
