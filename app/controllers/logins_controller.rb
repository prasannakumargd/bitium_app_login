class LoginsController < ApplicationController
	def create
		create! do |success,failure|
			success.html{redirect_to logins_path}
		end
	end

	def index
		@users = Login.all
		@hash = Gmaps4rails.build_markers(@users) do |user, marker|
	  		marker.lat user.lat
	  		marker.lng user.lon
  		end
  		redirect_to root_path
	end
end
