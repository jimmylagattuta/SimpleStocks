class PortfoliosController < ApplicationController
	def index
		@stocks = Stock.all
		puts '*' * 100
		puts @stocks
		puts '*' * 100
		@port = Portfolio.find_by(id: session[:id]) 


	end

	def new

	end

	def create
		@portfolio = Portfolio.create(account_name: params[:account_name],
						 active: true,
						 stock_capital: 0,
						 days_percent: 0,
						 cash_capital: 0,
						 days_capital: 0,
						 password: params[:password],
						 password_confirmation: params[:password_confirmation])
		session[:id] = @portfolio_id

		redirect_to "/user"
	end
end
