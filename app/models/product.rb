class Product < ApplicationRecord
  has_many :product_stores
  has_many :stores, through: :product_stores

  has_many :order_products
  has_many :orders, through: :order_products


  validates :name, presence: true
  validates :sku, presence: true
  validates :product_type, presence: true
  validates :price, presence: true
end
