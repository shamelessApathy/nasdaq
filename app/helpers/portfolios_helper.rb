module PortfoliosHelper
	def get_quotes
    	@string = ''
    	if @trades.count > 1
	    	@trades.each do |element|
	      		@string = @string + element[:ticker] + ','
	      	end
	    else
	    	@string = @trades[0][:ticker]
	    end
      	@quote = StockQuote::Stock::quote([@string], nil, nil, ['Symbol', 'Ask', 'Bid', 'LastTradePriceOnly'])
      	return @quote
	end
	def test(stuff)
		@things = stuff + ' things'
		return @things
	end
end
