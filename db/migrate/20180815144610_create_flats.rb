class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :name, presence: true
      t.string :address, presence: true
      t.text :description, presence: true
      t.integer :price_per_night, presence: true
      t.integer :number_of_guests, presence: true

      t.timestamps
    end
  end
end
