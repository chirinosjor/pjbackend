class AddProductsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :products, :text, array: true, default: []
  end
end
