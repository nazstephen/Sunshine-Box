class UserProfileController < ApplicationController
	before_action :authenticate_user!

	def user_profile
	end
end
