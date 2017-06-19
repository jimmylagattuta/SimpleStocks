class ChangeModelErrors < ActiveRecord::Migration[5.0]
  def change
  	add_column :stocks, :asking_price, :integer
  	add_column :stocks, :bidding_price, :integer
  	add_column :stocks, :good_day, :boolean
  end
end
