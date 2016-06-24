class Api::PurchasesController < ApplicationController

  skip_before_action :authenticate

  private

  def collection
    @purchases ||= Purchase.search_by(params).per(5)
  end

  def resource
    @purchase ||= Purchase.find params[:id]
  end

  def build_resource
    @purchase = Purchase.new resource_params
  end

  def resource_params
    params.require(:purchase).permit(:product_id, :quantity)
  end
end
