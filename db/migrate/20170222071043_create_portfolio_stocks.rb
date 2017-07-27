class CreatePortfolioStocks < ActiveRecord::Migration[5.0]
  def change
		create_table :portfolio_stocks, :id => false do |t|
 
     		t.belongs_to :stock, index:true
    		t.belongs_to :portfolio, index:true
    		t.decimal :price
        	t.integer :quantity
        	t.boolean :buy
        	t.boolean :sell
        	t.string :user_comment
   			t.timestamps
		end
 	end
end
