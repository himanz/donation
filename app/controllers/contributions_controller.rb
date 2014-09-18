class ContributionsController < ApplicationController
	def show
		@contribution = Contribution.find(params[:id])
	end

	def new
		@contribution = Contribution.new
	end

	def create
		@user = User.find(params[:user_id])
		@contribution = Contribution.new(contribution_params)
		respond_to do |format|
			if @contribution.save
				format.html { redirect_to @user }
			else
				format.html { render action: 'new' }
			end
		end
	end

  private

  def contribution_params
  	params.require(:contribution).permit(:name, :amount, :message)
  end
end
