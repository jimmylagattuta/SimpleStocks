class StocksController < ApplicationController
	def index
		# new_stock = params
		# if params
		# 	puts "*" * 100
		# 	puts "params"
		# 	puts @add_stock
		# 	puts "*" * 100
		# 	new_stock = params[:symbol]
		# 	@add_stock = StockQuote::Stock.quote(new_stock)
		# 	puts "*" * 100
		# 	puts @add_stock
		# 	puts "*" * 100
		# else
		puts "*" * 100
		puts "no params"
		puts "*" * 100
		@add_stock = StockQuote::Stock.quote("aapl")
		puts "*" * 100
		puts @add_stock
		puts "*" * 100

		if Stock.all != 0
			@all_stocks = Stock.all
		end

		name = @add_stock.name
		symbol = @add_stock.symbol
		asking_price = @add_stock.ask
		bidding_price = @add_stock.bid
		year_high = @add_stock.year_high
		year_low = @add_stock.year_low
		date = @add_stock.date
		changein_percent = @add_stock.changein_percent
		@new_stock = Stock.new(name: name,
									   symbol: symbol,
									   good_day: true,
									   date: date,
									   asking_price: asking_price,
									   bidding_price: bidding_price,
									   year_high: year_high,
									   year_low: year_low,
									   days_percent: changein_percent)





	end

	def all
		@all_stocks = Stock.all
	end
end
