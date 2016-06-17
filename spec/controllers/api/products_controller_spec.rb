require 'rails_helper'

describe Api::ProductsController do
  it {should route(:get, '/api/products').to(action: :index)}
  it {should route(:get, '/api/products/1').to(action: :show, id: 1)}
end
