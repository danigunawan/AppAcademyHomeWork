class AddAuctionIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :auction_id, :integer
  end
end
