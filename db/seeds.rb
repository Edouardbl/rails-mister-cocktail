require 'faker'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.create(name: 'lemon')
# Ingredient.create(name: 'ice')
# Ingredient.create(name: 'mint leaves')

cocktail_name = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

cocktail_name['drinks'].each do |ingredient|
  # puts "creating #{ingredient["strIngredient1"]}"
  Ingredient.create(name: ingredient["strIngredient1"])
end

puts 'Done'

5.times do
  Cocktail.create(
    name: Faker::Science.scientist
  )
end

5.times do
  Cocktail.create(
    name: Faker::Superhero.name
  )
end

5.times do
  Cocktail.created(
    name: Faker::Artist.name
  )
end
