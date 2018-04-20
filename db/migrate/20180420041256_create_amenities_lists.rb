class CreateAmenitiesLists < ActiveRecord::Migration[5.2]
  def change
    create_table :amenities_lists do |t|
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
