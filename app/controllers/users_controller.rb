class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  # def index
  #   @users = User.all
  #   @users = policy_scope(User)
  # end

  def show
    authorize @user
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to user_path(@user)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def edit; end

  # def update
  #   if @user.update(user_params)
  #     redirect_to user_path(@user)
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @user.destroy
  #   redirect_to root_path
  # end

  # private

  def set_user
    @user = User.find(params[:id])
  end

  # def user_params
  #   params.require(:user).permit(:first_name, :last_name, :phone_number, :address)
  # end
end
