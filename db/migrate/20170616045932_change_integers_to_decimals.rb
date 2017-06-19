class ChangeIntegersToDecimals < ActiveRecord::Migration[5.0]
  def change
  	change_column :stocks, :days_percent, :decimal, precision: 9, scale: 2
  	change_column :stocks, :bidding_price, :decimal, precision: 9, scale: 2
  	change_column :stocks, :asking_price, :decimal, precision: 9, scale: 2
  	change_column :stocks, :year_high, :decimal, precision: 9, scale: 2
  	change_column :stocks, :year_low, :decimal, precision: 9, scale: 2

  end
end
