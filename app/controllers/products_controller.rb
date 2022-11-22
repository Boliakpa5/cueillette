class ProductsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user, except: [:destroy]

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = User.find(params[:user_id])
    # record = params[:user_id]
    authorize @product
    if @product.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    authorize @product
    @product.delete
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :category, :photo)
  end
end
