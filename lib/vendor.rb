require 'pry'

class Vendor
  attr_reader :name, :stock, :inventory
  attr_writer

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
    @stock = Hash.new(0)
    @check_stock = Hash.new(0)
  end

  def stock(stock_item, quantity)
    @inventory[stock_item] += quantity
  end

  def check_stock(stock_item)
    @inventory[stock_item]
    # binding.pry
  end



end
