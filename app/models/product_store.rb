class ProductStore < ApplicationRecord
  belongs_to :products
  belongs_to :stores
end
