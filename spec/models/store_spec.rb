require 'rails_helper'

RSpec.describe Store, type: :model do
  describe "validations" do
    it "Should validate presence of required fields" do
      should validate_presence_of(:name)
      should validate_presence_of(:address)
      should validate_presence_of(:email)
      should validate_presence_of(:phone)
    end

    it "validate relations" do
      should have_many(:products)
    end
  end
end
