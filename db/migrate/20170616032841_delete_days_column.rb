class DeleteDaysColumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :stocks, :days, :string
  end
end
