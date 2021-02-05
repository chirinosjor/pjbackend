class OrderProduct < ApplicationRecord
  belongs_to :orders
  belongs_to :products


  validates :id, presence: true
  validates :orders_id, presence: true
  validates :products_id, presence: true
end
