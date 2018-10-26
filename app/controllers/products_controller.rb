class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  helper_method :number_to_currency_br

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
    redirect_to root_path
  end

  def create
    @product = Product.new(product_params)
    if @product.save
       redirect_to products_path
    else
      render 'new'
    end
  end

  def update
    @product.update(product_params)
    redirect_to products_path
  end

  private

    def product_params
      params.require(:product).permit(:description,:price,:quantity)
    end

    def set_product
      @product = Product.find(params[:id])
    end
  end
