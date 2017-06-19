class SimpleapisController < ApplicationController

	def index 
		@all_stocks = Stock.all
		@stock = params
		symbol = @stock['symbol']
		@add_stock = StockQuote::Stock.quote(symbol)
	end

	def create
		@stock = params
		symbol = @stock['symbol']
		@add_stock = StockQuote::Stock.quote(symbol)
		puts "*" * 100
		puts "*" * 100
		puts @add_stock.inspect
		puts "*" * 100
		puts "*" * 100
		name = @add_stock.name
		symbol = @add_stock.symbol
		asking_price = @add_stock.ask
		bidding_price = @add_stock.bid
		year_high = @add_stock.year_high
		year_low = @add_stock.year_low

		changein_percent = @add_stock.changein_percent
		@new_stock = Stock.new(name: name,
							   symbol: symbol,
							   good_day: true,
							   date: nil,
							   asking_price: asking_price,
							   bidding_price: bidding_price,
							   year_high: year_high,
							   year_low: year_low,
							   days_percent: changein_percent)








		render "create.json.jbuilder"
	end
end
