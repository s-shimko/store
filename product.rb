class Product

  attr_reader :price, :qty

  def initialize(price, qty)
    @price = price
    @qty = qty
  end

  # def self.post_types
  #   [Movie, Book, Disc]
  # end
  #
  # def self.create(type_index)
  #   return post_types[type_index].new
  # end

  def self.buy(product_array, choice)

    qty = product_array[choice].qty

    if qty > 0
      new_qty = qty - 1
      puts "You buy: #{product_array[choice].info}"
      puts "Product amount after buy: #{new_qty}"
    else
      puts "Amount of product is #{qty}. Sorry you can't buy it."
    end
  end

  def self.showcase(product_array)

    choice = -1

    until choice >= 0 && choice < product_array.size

      product_array.each_with_index do |type, index|

        puts "\t#{index}: #{type.show}"
      end

      choice = gets.chomp.to_i
    end
    # puts "You buy: #{product_array[choice]}"
    Product.buy(product_array, choice)
  end


  def update
  end

  def info
  end

  def show
    info + " - {#{@price} rub. [rest: #{@qty}]"
  end

end