require 'open-uri'
require 'nokogiri'

def seeding_dragons
  syrax = Dragon.new(name: 'Syrax', description: 'Yellow')
  syrax.user = User.where(name: 'Rhaenyra').first
  syrax.location = Location.all.sample
  syrax_file = URI.open('https://awoiaf.westeros.org/images/thumb/0/06/Syrax.jpeg/1200px-Syrax.jpeg')
  syrax.photos.attach(io: syrax_file, filename: 'syrax.png', content_type: 'image/png')
  syrax.save!
  caraxes = Dragon.new(name: 'Caraxes The Blood Wyrm', description: 'Blood Red')
  caraxes.user = User.where(name: 'Daemon').first
  caraxes.location = Location.all.sample
  caraxes_file = URI.open('https://fictionhorizon.com/wp-content/uploads/2022/10/caraxes.jpg')
  caraxes.photos.attach(io: caraxes_file, filename: 'caraxes.png', content_type: 'image/png')
  caraxes.save!
  seasmoke = Dragon.new(name: 'Seasmoke', description: 'Pale Silver-Grey')
  seasmoke.user = User.where(name: 'Leanor').first
  seasmoke.location = Location.all.sample
  seasmoke_file = URI.open('https://pbs.twimg.com/media/Fb3UfIKWAAAQe0u?format=jpg&name=small')
  seasmoke.photos.attach(io: seasmoke_file, filename: 'seasmoke.png', content_type: 'image/png')
  seasmoke.save!
  meleys = Dragon.new(name: 'Meleys The Red Queen', description: 'Scarlet')
  meleys.user = User.where(name: 'Rhaenys').first
  meleys.location = Location.all.sample
  meleys_file = URI.open('https://startefacts.com/upload//upload/news/950050389730.jpg')
  meleys.photos.attach(io: meleys_file, filename: 'meleys.png', content_type: 'image/png')
  meleys.save!
  sunfyre = Dragon.new(name: 'Sunfyre The Golden', description: 'Golden')
  sunfyre.user = User.where(name: 'Aegon II').first
  sunfyre.location = Location.all.sample
  sunfyre_file = URI.open('https://static.wikia.nocookie.net/gameofthrones/images/8/8d/Sunfyre_Driftmark.jpeg/revision/latest?cb=20221006163412')
  sunfyre.photos.attach(io: sunfyre_file, filename: 'sunfyre.png', content_type: 'image/png')
  sunfyre.save!
  vermithor = Dragon.new(name: 'Vermithor The Bronze Fury', description: 'Bronze')
  vermithor.user = User.where(name: 'Jaehaerys').first
  vermithor.location = Location.all.sample
  vermithor_file = URI.open('https://cinemaserietv.it/wp-content/uploads/2022/10/Vermithor.png')
  vermithor.photos.attach(io: vermithor_file, filename: 'vermithor.png', content_type: 'image/png')
  vermithor.save!
  vhagar = Dragon.new(name: 'Vhagar', description: 'Bronze, Greenish Blue')
  vhagar.user = User.where(name: 'Aemond').first
  vhagar.location = Location.all.sample
  vhagar_file = URI.open('https://www.thedigitalfix.com/wp-content/sites/thedigitalfix/2022/10/house-of-the-dragon-is-vhagar-bigger-than-balerion.jpg')
  vhagar.photos.attach(io: vhagar_file, filename: 'vhagar.png', content_type: 'image/png')
  vhagar.save!
  arrax = Dragon.new(name: 'Arrax', description: 'White')
  arrax.user = User.where(name: 'Lucerys').first
  arrax.location = Location.all.sample
  arrax_file = URI.open('https://www.thedigitalfix.com/wp-content/sites/thedigitalfix/2022/10/house-of-the-dragon-lucerys-velaryon-dragon-arrax-explained-2.jpg')
  arrax.photos.attach(io: arrax_file, filename: 'arrax.png', content_type: 'image/png')
  arrax.save!
  vermax = Dragon.new(name: 'Vermax', description: 'Green')
  vermax.user = User.where(name: 'Jacaerys').first
  vermax.location = Location.all.sample
  vermax_file = URI.open('https://preview.redd.it/vermax-looks-incredible-hopefully-he-is-potrayed-as-an-v0-mhmm5jiut6q91.jpg?auto=webp&s=85fea116cc3026d5f6cefec92e9667e96bad2a55')
  vermax.photos.attach(io: vermax_file, filename: 'vermax.png', content_type: 'image/png')
  vermax.save!
  drogon = Dragon.new(name: 'Drogon', description: 'Black and Red')
  drogon.user = User.where(name: 'Danaerys').first
  drogon.location = Location.all.sample
  drogon_file = URI.open('https://static.wikia.nocookie.net/iltronodispade/images/f/f0/Game-of-thrones-7-foto-ew-6-1-e1495481708780.jpg/revision/latest?cb=20180405071909&path-prefix=it')
  drogon.photos.attach(io: drogon_file, filename: 'drogon.png', content_type: 'image/png')
  drogon.save!
end
