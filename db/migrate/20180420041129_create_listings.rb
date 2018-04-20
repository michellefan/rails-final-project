class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :address
      t.integer :price
      t.string :term
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :square_footage
      t.text :text
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
