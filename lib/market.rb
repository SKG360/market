require 'pry'
class Market

  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def vendor_names
    names = @vendors.map do |vendor|
      vendor.name
    end
    names
  end

  def vendors_that_sell(peaches)
    peach_vendors = @vendors.map do |vendor|
      vendor.inventory.keep_if(peaches)
      # binding.pry
    end
    peach_vendors
  end

  def add_vendor(vendor_objects)
    @vendors << vendor_objects
  end

  def sorted_item_list
    sorted_items = @vendors.keep_if do |vendor|
      vendor.inventory
      binding.pry
    end
  end
end
