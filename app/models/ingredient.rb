class Ingredient < ApplicationRecord
  has_many :hoagies, through: :hoagie_ingredients
  has_many :hoagie_ingredients 
end
