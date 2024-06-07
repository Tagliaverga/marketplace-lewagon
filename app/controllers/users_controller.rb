class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @sales = Sale.all
    @sale = Sale.where(params[:user_id])
  end

  def historic
    @user = User.find(params[:id])
    @sales = Sale.where(user_id: @user)
    # SELECT * FROM restaurants WHERE rating = 5
  end
end
