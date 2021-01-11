class AddAuctionIdToGuitar < ActiveRecord::Migration[6.0]
  def change
    add_reference :guitars, :auction, foreign_key: true
  end
end
