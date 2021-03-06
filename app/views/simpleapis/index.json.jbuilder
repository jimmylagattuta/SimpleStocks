json.set! :stocks do
	json.array! @all_stocks.each do |item|
		json.id item.id
		json.name item.name
		json.symbol item.symbol
		json.year_high item.year_high
		json.year_low item.year_low
		json.changein_percent item.changein_percent
		json.asking_price item.asking_price
		json.bidding_price item.bidding_price
	end
end

