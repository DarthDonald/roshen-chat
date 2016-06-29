class Api::PurchasesController < ApplicationController

  before_action :find_current_purchase, only: [:create, :destroy]

  def index
    render 'purchases/index'
  end

  def create
    if !cPurchase
      super
    else
      cPurchase.update_attribute(:quantity, cPurchase.quantity + params['purchase']['quantity'].to_i)
    end
    render 'purchases/index'
  end

  def destroy
    if !cPurchase
      render text: "no info"
    else
      if cPurchase.quantity == params['purchase']['quantity']
        cPurchase.destroy
      else
        cPurchase.update_attribute(:quantity, cPurchase.quantity - params['purchase']['quantity'])
      end
    end
  end

  private

  def find_current_purchase
    cPurchase = Purchase.find_by(user_id: @current_user.id, product_id: params['purchase']['product_id'])
  end

  def collection
    @purchases ||= Purchase.where(user_id: @current_user.id).page(params[:page]).per(5)
  end

  def resource
    @purchase
  end

  def build_resource
    params['purchase']['user_id'] = @current_user.id
    @purchase = Purchase.new resource_params
  end

  def resource_params
    params.require(:purchase).permit(:product_id, :user_id, :quantity)
  end
  
end
