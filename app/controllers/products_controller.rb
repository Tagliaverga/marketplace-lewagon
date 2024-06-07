class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to products_path, notice: 'Product was succefully created.'
    else
      render :new, status: :unprocessable_entity
    end

  end

  def index
    if params[:query]
      @products = Product.global_search(params[:query])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path, notice: 'Product was succefully updated'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice: 'Product was successfully destroyed.', status: :see_other

  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :photo)
  end
end
