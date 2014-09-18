class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@contributions = User.get_contributions(@user.id)
	end
end
