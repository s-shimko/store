class Product

  attr_reader :price

  def initialize(price,qty)
    @price = price
    @qty = qty
  end

end