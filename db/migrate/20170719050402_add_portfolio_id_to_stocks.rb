class AddPortfolioIdToStocks < ActiveRecord::Migration[5.0]
  def change
  	add_column :stocks, :portfolio_ID, :integer
  	change_column :portfolios, :stock_capital, :decimal, precision: 9, scale: 2
  	change_column :portfolios, :cash_capitol, :decimal, precision: 9, scale: 2
  	change_column :portfolios, :days_caitol, :decimal, precision: 9, scale: 2
  	rename_column :portfolios, :cash_capitol, :cash_capital
  	rename_column :portfolios, :days_caitol, :days_captal
  end
end
