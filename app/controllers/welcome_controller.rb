class WelcomeController < ApplicationController
	def index
		@hash = params[:hash]
	end
end
