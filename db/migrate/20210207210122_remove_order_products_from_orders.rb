class RemoveOrderProductsFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :order_products
  end
end
