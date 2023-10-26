class CreateAppartments < ActiveRecord::Migration[6.1]
  def change
    create_table :appartments do |t|
      t.string :name
      t.integer :price
      t.string :address
      t.integer :age
      t.text :remarks

      t.timestamps
    end
  end
end
