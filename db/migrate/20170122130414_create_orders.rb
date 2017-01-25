class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :hoagie, null: false, foreign_key: true
      t.timestamps
    end
  end
end
