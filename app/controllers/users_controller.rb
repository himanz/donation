class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@contributions = User.get_contributions(@user.id).order("created_at DESC")
	end

	def reader
		@user = User.find(params[:id])
		@contributions = @user.contributions.find_by_display
	end
end
