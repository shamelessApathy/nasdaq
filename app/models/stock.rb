class Stock < ApplicationRecord
belongs_to :portfolio
validates :portfolio_id, :presence => true
end
