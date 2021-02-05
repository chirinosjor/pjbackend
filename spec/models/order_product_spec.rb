require 'rails_helper'

RSpec.describe OrderProduct, type: :model do
  it "Should validate presence of required fields" do
    should validate_presence_of(:id)
    should validate_presence_of(:orders_id)
    should validate_presence_of(:products_id)
  end
end
