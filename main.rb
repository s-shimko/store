require_relative "product"
require_relative "book"
require_relative "movie"
require_relative "disc"

# movie = Movie.new(1_020, 100)
# book = Book.new(1000_000, 1)
# disc = Disc.new(55_000, 34)
#
# book.update(:title => 'Fight club', :author_name => 'Chuck Palahniuk')
# movie.update(:title => 'Leon', :director_name => 'Luke Besson', :year => 1998)
# disc.update(:album_name => 'Seasons in the Abyss', :artist_name => 'Slayer', :genre => 'Metal')
#
# product_array = [
#     book,
#     movie,
#     disc
# ]
#
# puts "What do you want to buy?"
# puts
# Product.showcase(product_array)
# puts "Total price: #{Product.total}"

products = []

product = Movie.new(1_020, 100)
product.update(:title => 'Leon', :director_name => 'Luke Besson', :year => 1998)
products << product

product = Book.new(1000_000, 1)
product.update(:title => 'Fight club', :author_name => 'Chuck Palahniuk')
products << product

product = Disc.new(55_000, 34)
product.update(:album_name => 'Seasons in the Abyss', :artist_name => 'Slayer', :genre => 'Metal')
products << product

total = 0

choice = -1

while choice.to_s != "end"
  Product.showcase(products)
  choice = gets.chomp

  if choice.to_i >= 0 && choice.to_i < products.size

    total += products[choice.to_i].buy
    puts "Total price: #{total}"
    puts

  else
    puts "Wrong choice!"
  end
end

puts "You should pay: #{total}"

