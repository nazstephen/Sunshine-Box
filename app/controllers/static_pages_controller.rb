class StaticPagesController < ApplicationController
	before_action :authenticate_user!

	def index
		if current_user.user_type == 'customer'
			redirect_to user_profile_path
		end
	end
	
	def about
	end

	def partnerships
	end

	def privacy
	end


end
