# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Ingridents

#breads
italian = Ingredient.create(name: "Italian", price: "2.00", cat: "bread")
multigrain = Ingredient.create(name: "Multigrain", price: "3.00", cat: "bread")
honey_oat = Ingredient.create(name: "Honey Oat", price: "3.00", cat: "bread")
sesame = Ingredient.create(name: "Sesame", price: "2.49", cat: "bread") 

#sauces
honey_mustard = Ingredient.create(name: "Honey Mustard", price: "0.60", cat: "sauce")
sweet_onion = Ingredient.create(name: "Sweet Onion", price: "0.50", cat: "sauce")
mayo = Ingredient.create(name: "Mayonnaise", price: "0.30", cat: "sauce")
hot_sauce = Ingredient.create(name: "Hot Sauce", price: "0.50", cat: "sauce")
blood = Ingredient.create(name: "Blood", price: "1.00", cat: "sauce")

#main
cow = Ingredient.create(name: "Cow", price: "1.50", cat: "main")
turkey = Ingredient.create(name: "Turkey", price: "2.00", cat: "main")
pig = Ingredient.create(name: "Pig", price: "0.99", cat: "main")
chicken = Ingredient.create(name: "Chicken", price: "1.75", cat: "main")
falafel = Ingredient.create(name: "Falafel", price: "1.80", cat: "main")
tofu = Ingredient.create(name: "Tofu-Stripes ", price: "6.66", cat: "main")

#sides
salad = Ingredient.create(name: "Salad", price: "0.20", cat: "side")
tomato = Ingredient.create(name: "Tomato", price: "0.30", cat: "side")
cucumber = Ingredient.create(name: "Cucumber", price: "0.10", cat: "side")
pickles = Ingredient.create(name: "Pickles", price: "0.30", cat: "side")
pepper = Ingredient.create(name: "Pepper", price: "0.49", cat: "side")
pepperoni = Ingredient.create(name: "Pepperoni", price: "0.40", cat: "side")
hot_pepper = Ingredient.create(name: "Hot Pepper", price: "0.39", cat: "side")
onion = Ingredient.create(name: "Onion", price: "0.10", cat: "side")

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

my_hoagie = Hoagie.create(name: "My Great Hoagie")
