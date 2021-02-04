class Store < ApplicationRecord
  has_many :product
  
  validates :name,:address,:email,:phone, presence: true
end
