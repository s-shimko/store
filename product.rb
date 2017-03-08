class Product

  # def self.post_types
  #   [Movie, Book, Disc]
  # end
  #
  # def self.create(type_index)
  #   return post_types[type_index].new
  # end

  # def self.show_all
  #   choices = Product.post_types
  #
  #   choice = -1
  #
  #   until choice >= 0 && choice < choices.size
  #
  #     choices.each_with_index do |type, index|
  #
  #       puts "\t#{index}: #{type.downcase.show }"
  #     end
  #
  #     choice = gets.chomp.to_i
  #   end
  # end

  attr_reader :price, :qty

  def initialize(price, qty)
    @price = price
    @qty = qty
  end

  def update
  end

  def info
  end

  def show
    puts info + " - {#{@price} rub. [rest: #{@qty}]"
  end

end