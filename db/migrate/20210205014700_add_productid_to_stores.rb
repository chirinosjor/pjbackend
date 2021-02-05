class AddProductidToStores < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :product_id, :integer
  end
end
