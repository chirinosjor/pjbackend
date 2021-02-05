class AddProductStore < ActiveRecord::Migration[6.0]
  def change
    add_reference :stores, :products, index: true
    add_foreign_key :stores, :products
  end
end
