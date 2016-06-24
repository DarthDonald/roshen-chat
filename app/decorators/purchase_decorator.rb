class PurchaseDecorator < Draper::Decorator

  delegate_all

  def as_json *args
    {
      product_id: product_id,
      quantity: quantity
    }
  end
end
