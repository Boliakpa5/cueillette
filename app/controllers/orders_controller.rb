class OrdersController < ApplicationController

  private

  def set_user
    @user = current_user
  end
end
