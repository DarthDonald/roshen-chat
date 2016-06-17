class Product < ActiveRecord::Base
  class << self
    def search_by params = {}
      params = params.try(:symbolize_keys) || {}

      collection = all

      if params[:term].present?
        collection = collection.where('name ILIKE ?', "#{ params[:term]}%")
      end

      collection
    end
  end
end
