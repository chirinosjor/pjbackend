require 'rails_helper'

RSpec.describe ProductStore, type: :model do
  it "Should validate presence of required fields" do
    should validate_presence_of(:id)
    should validate_presence_of(:stores_id)
    should validate_presence_of(:products_id)
  end
end
