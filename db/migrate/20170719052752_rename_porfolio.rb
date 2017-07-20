class RenamePorfolio < ActiveRecord::Migration[5.0]
  def change
  	add_column :portfolios, :retirement, :decimal, precision: 9, scale: 2
  end
end
