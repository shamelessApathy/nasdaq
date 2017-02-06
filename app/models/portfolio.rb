class Portfolio < ApplicationRecord
 has_many :stocks, dependent :destroy
end
