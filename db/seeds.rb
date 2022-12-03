# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
require_relative 'seed_location'

puts "Seeding the DB..."

puts "Seeding Locations..."
seeding_location

rhaenyra = User.create!(
  name: 'Rhaenyra',
  family_name: 'Targaryen',
  email: 'rhaenyra@dragonstone.ws',
  password: 'dracarys',
  password_confirmation: 'dracarys'
)

daemon = User.create!(
  name: 'Daemon',
  family_name: 'Targaryen',
  email: 'daemon@dragonstone.ws',
  password: 'dracarys',
  password_confirmation: 'dracarys'
)

syrax = Dragon.new(
  name: 'Syrax'
)

caraxes = Dragon.new(
  name: 'Caraxes'
)

syrax.user = rhaenyra
syrax_file = URI.open('https://awoiaf.westeros.org/images/thumb/0/06/Syrax.jpeg/1200px-Syrax.jpeg')
syrax.photos.attach(io: syrax_file, filename: 'syrax.png', content_type: 'image/png')
syrax.location = Location.all.sample
syrax.save!
caraxes.user = daemon
caraxes_file = URI.open('https://awoiaf.westeros.org/images/thumb/2/2f/TV_Caraxes.jpeg/800px-TV_Caraxes.jpeg')
caraxes.photos.attach(io: caraxes_file, filename: 'caraxes.png', content_type: 'image/png')
caraxes.location = Location.all.sample
caraxes.save!
