# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shelter.destroy_all
@shelter = Shelter.create(name: 'Aurora shelter', city: 'Aurora, CO', foster_program: false, rank: 9)

Pet.destroy_all
@pet_1 = Pet.create(name: 'Duke', age: 17, breed: 'Schnoodle', adoptable: true, shelter_id: @shelter.id)
@pet_2 = Pet.create(name: 'Marty', age: 9, breed: 'German Shepard', adoptable: true, shelter_id: @shelter.id)
@pet_3 = Pet.create(name: 'Taco', age: 4, breed: 'Malamute', adoptable: true, shelter_id: @shelter.id)
@pet_4 = Pet.create(name: 'Steven', age: 2, breed: 'Komondor', adoptable: true, shelter_id: @shelter.id)
@pet_5 = Pet.create(name: 'Stevo', age: 7, breed: 'Husky', adoptable: true, shelter_id: @shelter.id)
@pet_6 = Pet.create(name: 'Stevie', age: 1, breed: 'Great Floofster', adoptable: true, shelter_id: @shelter.id)
@pet_7 = Pet.create(name: 'Stevemeister', age: 11, breed: 'Shaggy Cuddler', adoptable: true, shelter_id: @shelter.id)
