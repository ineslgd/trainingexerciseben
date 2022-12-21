class Tree < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :adoptions, dependent: :destroy
  validates :name, :address, :fruit_type, :description, :quantity_per_year, :price_per_year, presence: true
  validates :fruit_type, inclusion: { in: ['Apple', 'Apricot', 'Cherry', 'Chestnut', 'Coconut tree', 'Fig', 'Grapefruit', 'Hazel', 'Mandarin', 'Mango', 'Mirabellier', 'Mulberry', 'Olivier', 'Orange', 'Pear', 'Plum']}
  validates :description, length: { in: 20..280 }
  validates :quantity_per_year, length: { minimum: 1 }, numericality: { greater_than: 0 }
  validates :price_per_year,  numericality: { greater_than: 0 }
end
