class Hoagie < ApplicationRecord
  has_many :ingredients, through: :hoagie_ingredients
  has_many :hoagie_ingredients
end
