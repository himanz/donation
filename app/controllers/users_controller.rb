class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@contributions = Contribution.where(user_id: @user.id)
	end
end
