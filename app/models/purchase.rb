class Purchase < ActiveRecord::Base

  belongs_to :user
  belongs_to :product
  belongs_to :order

  validates :product_id, presence: true
  validates :quantity, presence: true
  end
end
