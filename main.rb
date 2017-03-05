require_relative "product"
require_relative "book"
require_relative "movie"
require_relative "music"

leon_movie = Movie.new(1_000, 2)
t2_movie = Movie.new(1_020, 100)

petr1_book = Book.new(1000_000, 1)

metallica_music = Music.new(55_000, 34)

puts "Leon price: " + leon_movie.price.to_s
puts "T2 price: " + t2_movie.price.to_s
puts "Petr1 price: " + petr1_book.price.to_s
puts "Metallica price: " + metallica_music.price.to_s

