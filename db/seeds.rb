# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
House.destroy_all
Character.destroy_all

sloan = User.create(email: "sloan.holzman@gmail.com", password: "password")

baratheon = sloan.houses.create(name: 'Baratheon', motto: "Ours is fury")
baratheon.characters.create({name: "king robert", user_id: sloan.id})
