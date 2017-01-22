class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.money :price, null: false
      t.string :cat, null: false
      t.timestamps
    end
  end
end
