class AddDetailsToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :address, :string
    add_column :listings, :aptDetsBed, :integer
    add_column :listings, :aptDetsBath, :integer
    add_column :listings, :aptDetsSqft, :integer
    add_column :listings, :factsFeature, :string
  end
end
