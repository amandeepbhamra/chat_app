class MessagesController < ApplicationController

	# GET /messages
	# GET /messages.json
	def index
		@messages = Message.all
		@message = Message.new
		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @messages }
		end
	end

	# POST /messages
	# POST /messages.json
	def create
		@message = Message.create!(params[:message])
		respond_to do |format|
			format.js
		end
	end
end