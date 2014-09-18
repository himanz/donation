class ContributionsController < ApplicationController
	def show
		@contribution = Contribution.find(params[:id])
	end
end
