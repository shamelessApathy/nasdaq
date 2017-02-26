class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.belongs_to :user, index: true
      t.integer :balance
      t.string :name
      t.timestamps
    end

      create_table :trades do |t|
      t.belongs_to :portfolio, index: true
      t.string :ticker
      t.decimal :price, precision:5, scale:2
      t.integer :quantity
      t.boolean :buy
      t.boolean :sell
      t.timestamps
    end
end
end
