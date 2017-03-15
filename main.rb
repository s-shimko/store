require_relative "product"
require_relative "book"
require_relative "movie"
require_relative "disc"

doc = Product.read_from_xml("store.xml")

movie_h = Hash.new
doc.elements.each("//product/movie") do |item|
  movie_h = item.attributes
end

book_h = Hash.new
doc.elements.each("//product/book") do |item|
  book_h = item.attributes
end

disc_h = Hash.new
doc.elements.each("//product/disc") do |item|
  disc_h = item.attributes
end



products = []

product = Movie.new(1_020, 100)
product.update(movie_h)
products << product

product = Book.new(1000_000, 1)
# product.update(:title => 'Fight club', :author_name => 'Chuck Palahniuk')
product.update(book_h)
products << product

product = Disc.new(55_000, 34)
# product.update(:album_name => 'Seasons in the Abyss', :artist_name => 'Slayer', :genre => 'Metal')
product.update(disc_h)
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

