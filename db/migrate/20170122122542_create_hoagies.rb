class CreateHoagies < ActiveRecord::Migration[5.0]
  def change
    create_table :hoagies do |t|
      t.varchar :name

      t.timestamps
    end
  end
end
