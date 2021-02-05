require 'rails_helper'

RSpec.describe Order, type: :model do
  describe "validations" do
    it "Should validate presence of required fields" do
      should validate_presence_of(:total)
    end

    it "validate relations" do
      should have_many(:products)
      should belong_to(:store)
    end
  end
end
