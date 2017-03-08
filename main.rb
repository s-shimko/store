require_relative "product"
require_relative "book"
require_relative "movie"
require_relative "disc"

movie = Movie.new(1_020, 100)
book = Book.new(1000_000, 1)
disc = Disc.new(55_000, 34)

book.update(:title => 'Fight club', :author_name => 'Chuck Palahniuk')
movie.update(:title => 'Leon', :director_name => 'Luke Besson', :year => 1998)
disc.update(:album_name => 'Seasons in the Abyss', :artist_name => 'Slayer', :genre => 'Metal')

product_array = [
    book,
    movie,
    disc
]

puts "What do you want to buy?"
puts
Product.showcase(product_array)



