class UsersController < ApplicationController
  before_action :authenticate_user!
	def booking_history
		if current_user
	  		if current_user.is_admin? or current_user.is_super_admin?
	  			redirect_to '/admin'
	  		end
  		end
	end
end
