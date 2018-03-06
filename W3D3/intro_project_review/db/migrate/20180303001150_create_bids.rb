class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.integer :auction_id, null: false
      t.integer :bidder_id, null: false
      t.integer :amount, null: false

      t.timestamps
    end
  end
end
