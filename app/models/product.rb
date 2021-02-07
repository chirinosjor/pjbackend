class Product < ApplicationRecord
  has_many :product_stores
  has_many :stores, through: :product_stores

  has_and_belongs_to_many :orders


  validates :name, presence: true
  validates :sku, presence: true
  validates :product_type, presence: true
  validates :price, presence: true
end
