# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Ingredients

#breads
italian = Ingredient.create(name: "Italian", price: "2.00")
multigrain = Ingredient.create(name: "Multigrain", price: "3.00")
honey_oat = Ingredient.create(name: "Honey Oat", price: "3.00")
sesame = Ingredient.create(name: "Sesame", price: "2.49")

#sauces
honey_mustard = Ingredient.create(name: "Honey Mustard", price: "0.60")
sweet_onion = Ingredient.create(name: "Sweet Onion", price: "0.50")
mayo = Ingredient.create(name: "Mayonnaise", price: "0.30")
hot_sauce = Ingredient.create(name: "Hot Sauce", price: "0.50")
blood = Ingredient.create(name: "Blood", price: "1.00")

#main
cow = Ingredient.create(name: "Cow", price: "1.50")
turkey = Ingredient.create(name: "Turkey", price: "2.00")
pig = Ingredient.create(name: "Pig", price: "0.99")
chicken = Ingredient.create(name: "Chicken", price: "1.75")
falafel = Ingredient.create(name: "Falafel", price: "1.80")
tofu = Ingredient.create(name: "Tofu-Stripes ", price: "6.66")

#sides
salad = Ingredient.create(name: "Salad", price: "0.20")
tomato = Ingredient.create(name: "Tomato", price: "0.30")
cucumber = Ingredient.create(name: "Cucumber", price: "0.10")
pickles = Ingredient.create(name: "Pickles", price: "0.30")
pepper = Ingredient.create(name: "Pepper", price: "0.49")
pepperoni = Ingredient.create(name: "Pepperoni", price: "0.40")
hot_pepper = Ingredient.create(name: "Hot Pepper", price: "0.39")
onion = Ingredient.create(name: "Onion", price: "0.10")

## Hoagies
kill_kow = Hoagie.create(name: "Kill The Kreepy Kow")
kill_kow.ingredients << [sesame, cow, blood, hot_pepper]

poke_pig = Hoagie.create(name: "Poke The Preaching Pig")
poke_pig.ingredients << [multigrain, pig, blood, hot_pepper, salad, onion, tomato]

choke_chicken = Hoagie.create(name: "Chicken Choker")
choke_chicken.ingredients << [italian, blood, chicken, cucumber, onion, salad]

torture_turkey = Hoagie.create(name: "Torture The Turkey")
torture_turkey.ingredients << [honey_oat, turkey, turkey, blood, blood, salad]

wooden_h = Hoagie.create(name: "Holz Hoagie")
wooden_h.ingredients << [multigrain, tofu, salad, cucumber, pickles, onion, sweet_onion]
