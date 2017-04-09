require 'rails_helper'

RSpec.describe Chat, type: :model do

  it { should have_many(:messages).dependent(:destroy) }

  it { should validate_presence_of :name }
  
end
