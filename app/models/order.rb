class Order < ApplicationRecord
  belongs_to :store

  has_and_belongs_to_many :products

  validates :total, presence: true

  after_save :save_total
  def save_total
    if total == 0
      self.update_attributes(:total => update_total)
    end
  end

  def update_total
    suma = 0
    self.products.each do |p| 
    suma += p.price
    end
    return suma
  end
end
