module TradesHelper
	def stock_quote(ticker)
		@quote = StockQuote::Stock::quote(ticker, nil, nil, ['Symbol', 'Ask', 'Bid', 'LastTradePriceOnly'])
	end
end
