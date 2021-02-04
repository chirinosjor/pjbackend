class Order < ApplicationRecord
  belongs_to :store
  has_many :product
end
