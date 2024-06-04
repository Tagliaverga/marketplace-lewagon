class SalesController < ApplicationController

  def new
    @sale = Sale.new
  end

  def create
    @sale =Sale.new(sale_params)
    @sale.save
    if @sale.save
      redirect_to sales_path, notice: 'sale was succefully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:product_id, :user_id)
  end
end
