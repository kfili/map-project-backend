class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.text :name
      t.text :type
      t.text :location
      t.text :address
      t.text :phone
      t.integer :rating

      t.timestamps null: false
    end
  end
end
