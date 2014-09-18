require 'spec_helper'

describe ContributionsController do
  # describe 'GET #index' do
  # 	context 'without params' do
  # 		it "populates an array of all contributions"
  # 		it "renders the :index view"
  # 	end
  # end

  describe 'GET#show' do
  	it "assigns the requested contribution to @contribution" do
  		user = create(:user)
  		contribution = create(:contribution, user: user)
  		get :show, id: contribution, user_id: user.id
  		expect(assigns(:contribution)).to eq contribution
  	end
  	it "renders the :show template"
  end

  describe 'GET #new' do
  	it "assigns a new Contribution to @contribution"
    it "renders the :new template"
  end

  describe "POST #create" do
  	context "with valid attributes" do
  		it "saves the new contribution in the database"
  		it "redirects to users#show"
  	end

  	context "with invalid attributes" do
  		it "does not save the new contribution in the database"
  		it "re-renders the :new template"
  	end
  end
end
