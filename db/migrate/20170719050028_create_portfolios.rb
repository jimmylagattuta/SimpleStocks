class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :account_name
      t.boolean :active
      t.decimal :stock_capital
      t.decimal :days_percent
      t.string :stocks
      t.decimal :cash_capitol
      t.decimal :days_caitol

      t.timestamps
    end
  end
end
