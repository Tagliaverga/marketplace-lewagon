class SalesController < ApplicationController
  before_action :set_product, only: %i[new create]
  def new
  end

  def create
    @sale = Sale.new
    @sale.product = @product
    @sale.user = current_user
    if @sale.save
      redirect_to products_path, notice: 'Sale was succesfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end
end
