class Api::OrdersController < ApplicationController

  def index
    render 'orders/index'
  end

  private

  def build_resource
    @order = Order.new
    @order.user_id = @current_user.id
  end

  def resource
    @order
  end

  def resource_params
    params.require(:order).permit(:user_id, :sum, :status)
  end

  def collection
    @collection = Order.where(user_id: @current_user.id).page(params[:page]).per(5)
  end
end
