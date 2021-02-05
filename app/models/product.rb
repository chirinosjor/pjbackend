class Product < ApplicationRecord
  has_many :product_stores
  has_many :stores, through: :product_stores

  has_many :order_products
  has_many :orders, through: :order_products
end
