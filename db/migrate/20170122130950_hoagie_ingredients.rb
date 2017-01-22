class HoagieIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :hoagie_ingredients do |t|
      t.references :hoagie, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
    end
    
  end
end
