class CreateProductStores < ActiveRecord::Migration[6.0]
  def change
    create_table :product_stores do |t|
      t.references :products, null: false, foreign_key: true
      t.references :stores, null: false, foreign_key: true

      t.timestamps
    end
  end
end
