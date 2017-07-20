class ChangeNameInPortfolio < ActiveRecord::Migration[5.0]
  def change
  	rename_column :portfolios, :days_captal, :days_capital
  end
end
