class AddPAsswordToAccunt < ActiveRecord::Migration[5.0]
  def change
  	add_column :portfolios, :password_digest, :string
  end
end
