class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :property
      t.integer :price
      t.text :description
      t.integer :sharesAvailaible
      t.integer :sharePrice

      t.timestamps


    end
  end
end
