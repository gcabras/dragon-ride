# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

puts "Seeding the DB..."

rhaenyra = User.new(
  name: 'Rhaenyra',
  family_name: 'Targaryen',
  email: 'rhaenyra@dragonstone.ws',
  password: 'dracarys',
  password_confirmation: 'dracarys'
)

syrax = Dragon.new(
  name: 'Syrax',
  address: 'Dragonstone'
)

syrax.user = rhaenyra
syrax_file = URI.open('https://awoiaf.westeros.org/images/thumb/0/06/Syrax.jpeg/1200px-Syrax.jpeg')
syrax.photos.attach(io: syrax_file, filename: 'syrax.png', content_type: 'image/png')
syrax.save!
