class Order < ActiveRecord::Base

  has_many :purchases, dependent: :destroy
  belongs_to :user

  enum status: [:pending, :accepted, :declained]

  def update_order_id_to_purchase
    purchases = Purchase.where(user_id: self.user_id, order_id: nil)
    sum = 0
    purchases.each do |purchase|
      purchase.update_attribute(:order_id, self.id)
      sum = purchase.product.price * purchase.quantity
    end
    self.update_attribute(:sum, sum)
  end
end
