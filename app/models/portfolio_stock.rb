class PortfolioStock < ApplicationRecord
	has_and_belongs_to_many :stocks
	has_and_belongs_to_many :portfolios
end
