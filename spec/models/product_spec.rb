require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it "Should validate presence of required fields" do
      should validate_presence_of(:name)
      should validate_presence_of(:sku)
      should validate_presence_of(:product_type)
      should validate_presence_of(:price)
    end
  end
end
