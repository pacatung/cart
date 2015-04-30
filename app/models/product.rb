class Product < ActiveRecord::Base
  validates_presence_of :name, :in_stock_qty, :price
  validates_numericality_of :in_stock_qty, :only_integer => true
  validates_numericality_of :price, :greater_than => 1

end
