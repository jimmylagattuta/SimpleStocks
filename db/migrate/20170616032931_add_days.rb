class AddDays < ActiveRecord::Migration[5.0]
  def change
  	add_column :stocks, :days_percent, :integer
  end
end
