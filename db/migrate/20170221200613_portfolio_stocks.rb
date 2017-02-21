class PortfolioStocks < ActiveRecord::Migration[5.0]
  def change
  	create_join_table :portfolios, :stocks, column_options: { null: true } do |t|
  		t.belongs_to :portfolios 
  		t.belongs_to :stocks
  	end
  end
end
