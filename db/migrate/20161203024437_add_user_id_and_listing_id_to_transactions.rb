class AddUserIdAndListingIdToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :user_id, :integer
    add_column :transactions, :listing_id, :integer
  end
end
