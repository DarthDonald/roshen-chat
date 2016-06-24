class Purchase < ActiveRecord::Base

  belongs_to :user
  belongs_to :product

  validates :product_id, presence: true
  validates :quantity, presence: true

  class << self
    def search_by params = {}
      params = params.try(:symbolize_keys) || {}

      collection = page(params[:page])

      collection
    end
  end
end
