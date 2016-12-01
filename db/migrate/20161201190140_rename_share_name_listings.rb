class RenameShareNameListings < ActiveRecord::Migration[5.0]
  def change
    rename_column :listings, :sharesAvailaible, :shares_available
  end
end
