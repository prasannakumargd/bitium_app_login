class LoginsController < ApplicationController
	def create
		@log = Login.create
		redirect_to markers_logins_path
	end

	def markers
		@users = Login.all
		@hash = Gmaps4rails.build_markers(@users) do |user, marker|
	  		marker.lat user.lat
	  		marker.lng user.lon
  	end

  	redirect_to root_path(:hash => @hash)
	 end
end
