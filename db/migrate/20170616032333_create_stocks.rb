class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.date :date
      t.string :symbol
      t.integer :year_high
      t.integer :year_low
      t.string :days

      t.timestamps
    end
  end
end
