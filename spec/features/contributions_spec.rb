require 'spec_helper'

feature 'Contribution management' do
	before do
		@user = create(:user)
		@contribution = create(:contribution)
	end

	scenario "add a new contribution" do
    visit new_user_contribution_path(@user)
    expect {
    	fill_in 'Name', with: @contribution.name
    	fill_in 'Amount', with: @contribution.amount
    	fill_in 'Message', with: @contribution.message
    	click_button 'Submit'
    }.to change(Contribution, :count).by(1)
    expect(current_path).to eq user_path(@user)
	end
end