class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.text :address
      t.string :email, default: 'francisco.abalan@pjchile.com'
      t.string :phone
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
