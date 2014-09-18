class ContributionsController < ApplicationController
	def show
		@contribution = Contribution.find(params[:id])
	end

	def new
		@contribution = Contribution.new
	end
end
