class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product


  validates :id, presence: true
  validates :orders_id, presence: true
  validates :products_id, presence: true
end
