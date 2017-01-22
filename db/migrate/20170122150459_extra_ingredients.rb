class ExtraIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :extra_ingredients do |t|
      t.references :order, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
    end
  end
end
