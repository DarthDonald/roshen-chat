class Order < ActiveRecord::Base

  belongs_to :user

  has_many :purchases,            dependent: :destroy
  has_many :gift_certificates

  validates_presence_of :purchases

  enum status: [:pending, :accepted, :declained]

  after_create :update_order_id_to_purchase

  def update_order_id_to_purchase
      self.purchases  = Purchase.unordered.where(user_id: user_id)

      self.sum        = self.purchases.inject{|s, val| s += val.quantity * val.product.price }

      self.save
  end
end
