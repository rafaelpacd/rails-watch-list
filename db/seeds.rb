# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do |movie|
  movie = Movie.new(title: Faker::Movie.title, overview: Faker::Movie.quote)
  movie.save
end

10.times do |list|
  list = List.create(name: Faker::Book.genre)
end
