class SessionsController < ApplicationController
	def new
	end

	def create
		port = Portfolio.find_by(account_name: params[:account_name])
		if port
			session[:id] = port.id
			redirect_to "/user"
			puts "*" * 100
			puts "portSaved"
			puts port 
			puts port.id
			puts "*" * 100

		else
			redirect_to "/portfolio"
		end
	end

	def destroy
		if session[:id]
			puts "*" * 100
			session[:id] = nil
			puts "*" * 100

		end
		redirect_to "/stocks"
	end
end
