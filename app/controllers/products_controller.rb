class ProductsController < ApplicationController
before_action :set_user

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = @user
    if @product.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def delete
    @product = Product.find(params[:id])
    @product.delete
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :category, :photo)
  end
end
