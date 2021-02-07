class Order < ApplicationRecord
  belongs_to :store

  has_and_belongs_to_many :products

  validates :total, presence: true
end
