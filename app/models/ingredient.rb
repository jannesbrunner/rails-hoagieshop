class Ingredient < ApplicationRecord
  has_many :hoagies, through: :hoagie_ingredients  
end
