class ProductsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user, only: [:index]

  def index
    @products = policy_scope(Product)
    @user_products = Product.where(user_id: @user)
    @user_active_products = Product.where(user_id: @user, status: true)
    @user_orders = Order.where(product_id: @user_products.ids)
    @user_categories = @user_active_products.map(&:category).uniq
    if params[:query].present?
      @products =  @products.search_by_tag(params[:query])
    end
    @markers = [{
      lat: @user.latitude,
      lng: @user.longitude
    }]
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product
    if @product.save
      redirect_to products_path(user_id: current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    authorize @product
    @product.status = false
    @product.save
    redirect_to products_path(user_id: current_user)
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :category, :photo, :user_id)
  end
end
