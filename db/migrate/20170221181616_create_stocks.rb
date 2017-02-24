class CreateStocks < ActiveRecord::Migration[5.0]
  def change
   create_table :stocks do |t|
    	t.string :ticker
      t.belongs_to :sector, index: true
      t.string :company_name
    	t.timestamps
  	end
  end
end


