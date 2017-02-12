class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.integer :user
      t.string :name
      t.timestamps
    end

    create_table :stocks do |t|
    	t.belongs_to :portfolio, index: true
    	t.string :ticker
    	t.timestamps
  	end
end
end
