class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.integer :portfolio

      t.timestamps
    end
  end
end
