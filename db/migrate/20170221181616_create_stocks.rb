class CreateStocks < ActiveRecord::Migration[5.0]
  def change
   create_table :stocks do |t|
    	t.string :ticker
        t.decimal :price
        t.integer :quantity
        t.belongs_to :sector, index: true
        t.boolean :buy
        t.boolean :sell
        t.string :company_name
        t.string :user_comment
    	t.timestamps
  	end
  end
end


