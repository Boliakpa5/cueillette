class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, except: [:new, :create]
  before_action :set_user
  before_action :set_product, only: [:new, :create]

  def index
    @orders = policy_scope(Order)
  end

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
      redirect_to orders_path(@user)
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
