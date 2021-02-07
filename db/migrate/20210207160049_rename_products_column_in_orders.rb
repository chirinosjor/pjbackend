class RenameProductsColumnInOrders < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :products, :order_products
  end
end
