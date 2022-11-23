class OrdersController < ApplicationController
  before_action :set_user
  before_action :set_product, only: [:new, :create]

  def new
    @order = Order.new
    authorize @order
  end

  def create
    @order = Order.new(order_params)
    @order.user = @user
    @order.product = @product
    authorize @order
    if @order.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = current_user
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  def order_params
    params.require(:order).permit(:pickup_date)
  end
end
