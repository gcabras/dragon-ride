# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require_relative 'seed_location'
require_relative 'seed_characters'
require_relative 'seed_dragons'

puts "Seeding the DB..."

puts "Seeding Locations..."
seeding_location

puts "Seeding Characters..."
seeding_charachers

puts "Seeding Dragons..."
seeding_dragons
