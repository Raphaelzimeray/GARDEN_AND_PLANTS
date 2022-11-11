# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "Cleaning database"


Plant.destroy_all

Garden.destroy_all

puts "creating 2 new gardens..with their plants"

jardin_des_plantes = Garden.new(
  name: "Jardin des plantes"
)

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/4/48/Paris_75005_Grande_Galerie_de_l%27Evolution_20070804.jpg')
jardin_des_plantes.photo.attach(io: file, filename: '75005_Grande_Galerie/jpg', content_type: '75005_Grande_Galerie.jpg')
jardin_des_plantes.save!

orchidée = Plant.new(name: "Orchidée", garden_id: jardin_des_plantes.id)
file = URI.open('https://www.cmonjardinier.com/wp-content/uploads/2019/06/planter-rempoter-arroser-orchidee.png')
orchidée.photo.attach(io: file, filename: 'Orchidee/png', content_type: 'Orchidee.png')
orchidée.save!

rose = Plant.new(name: "Rose", garden_id: jardin_des_plantes.id)
file = URI.open('https://cdn.shopify.com/s/files/1/0433/5448/8992/files/3_a127ffd9-8f73-4c47-9e85-b02c8ff5af14.jpg?v=1619169120')
rose.photo.attach(io: file, filename: 'rose/jpeg', content_type: 'rose.jpeg')
rose.save!


puts "#{jardin_des_plantes.name} has been created!"
puts "#{orchidée.name} has been created!"
puts "#{rose.name} has been created"

jardin_des_tuileries = Garden.new(
  name: "Jardin des Tuileries"
)

file = URI.open('https://www.radiofrance.fr/s3/cruiser-production/2022/02/dc890b47-0967-46b6-86a6-5f2cb8d0c4bd/1200x680_gettyimages-874244454.jpg')
jardin_des_tuileries.photo.attach(io: file, filename: 'jardindestuileries/jpg', content_type: 'jardindestuileries.jpg')
jardin_des_tuileries.save!

bambou = Plant.new(name: "Bambou", garden_id: jardin_des_tuileries.id)
file = URI.open('https://www.alinea.com/dw/image/v2/BCKM_PRD/on/demandware.static/-/Sites-ali_master/default/dw234282d5/images/26478166/Plante-BAMBOU-26478166-A-1.jpg?sw=982&sh=982&sm=fit&sfrm=png')
bambou.photo.attach(io: file, filename: 'bambou/jpeg', content_type: 'bambou.jpeg')
bambou.save!

pommier = Plant.new(name: "Pommier", garden_id: jardin_des_tuileries.id)
file = URI.open('https://www.gammvert.fr/conseils/sites/default/files/styles/main_image/public/2017-09/fruitierreduit.jpg?itok=Ovw8Jzko')
pommier.photo.attach(io: file, filename: 'Pommevert/jpeg', content_type: 'Pommier.jpeg')
pommier.save!

puts "#{jardin_des_tuileries.name} has been created!"
puts "#{bambou.name} has been created!"
puts "#{pommier.name} has been created!"
