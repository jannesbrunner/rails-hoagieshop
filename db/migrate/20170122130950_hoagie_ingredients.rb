class HoagieIngredients < ActiveRecord::Migration[5.0]
  def change
    create_join_table :ingredients, :hoagies do |t|
      t.index [:ingredient_id, :hoagie_id]
      t.index [:hoagie_id, :ingredient_id]
    end
    add_foreign_key :hoagie_ingredients, :hoagies
    add_foreign_key :hoagie_ingredients, :ingredients
  end
end
