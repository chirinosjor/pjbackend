class Order < ApplicationRecord
  belongs_to :store

  has_many :order_products
  has_many :products

  validates :total, presence: true
end
