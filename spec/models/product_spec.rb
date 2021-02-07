require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it "Should validate presence of required fields" do
      should validate_presence_of(:name)
      should validate_presence_of(:sku)
      should validate_presence_of(:product_type)
      should validate_presence_of(:price)
    end

    it "validate relations" do
      should have_and_belong_to_many(:orders)
    end
  end
end
