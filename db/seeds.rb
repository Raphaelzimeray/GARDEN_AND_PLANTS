# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "Cleaning database"


Garden.destroy_all

puts "creating 2 new gardens.."

jardin_des_plantes = Garden.new(
  name: "Jardin des plantes"
)

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/4/48/Paris_75005_Grande_Galerie_de_l%27Evolution_20070804.jpg')
jardin_des_plantes.photo.attach(io: file, filename: '75005_Grande_Galerie/jpg', content_type: '75005_Grande_Galerie.jpg')
jardin_des_plantes.save!

puts "#{jardin_des_plantes.name} has been created!"

jardin_des_tuileries = Garden.new(
  name: "Jardin des Tuileries"
)

file = URI.open('https://www.radiofrance.fr/s3/cruiser-production/2022/02/dc890b47-0967-46b6-86a6-5f2cb8d0c4bd/1200x680_gettyimages-874244454.jpg')
jardin_des_tuileries.photo.attach(io: file, filename: 'jardindestuileries/jpg', content_type: 'jardindestuileries.jpg')
jardin_des_tuileries.save!

puts "#{jardin_des_tuileries.name} has been created!"
