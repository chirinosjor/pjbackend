class ProductStore < ApplicationRecord
  belongs_to :products
  belongs_to :stores


  validates :id, presence: true
  validates :products_id, presence: true
  validates :stores_id, presence: true
end
