require 'spec_helper'

describe ContributionsController do
  # describe 'GET #index' do
  # 	context 'without params' do
  # 		it "populates an array of all contributions"
  # 		it "renders the :index view"
  # 	end
  # end

  describe 'GET#show' do
  	before do
  		@user = create(:user)
  		@contribution = create(:contribution, user: @user)
  		get :show, id: @contribution, user_id: @user.id
  	end

  	it "assigns the requested contribution to @contribution" do
  		expect(assigns(:contribution)).to eq @contribution
  	end

  	it "renders the :show template" do
  		expect(response).to render_template :show
  	end
  end

  describe 'GET #new' do
  	before do
  		user = create(:user)
  		get :new, user_id: user.id
  	end

  	it "assigns a new Contribution to @contribution" do
  		expect(assigns(:contribution)).to be_a_new(Contribution)
  	end

    it "renders the :new template" do
    	expect(response).to render_template :new
    end
  end

  describe "POST #create" do
  	context "with valid attributes" do
  		it "saves the new contribution in the database" do
  			user = create(:user)
  			expect{
  				post :create, user_id: user.id, contribution: attributes_for(:contribution)
  			}.to change(Contribution, :count).by(1)
  		end

  		it "redirects to users#show" do
  			user = create(:user)
  			post :create, user_id: user.id, contribution: attributes_for(:contribution)
  			expect(response).to redirect_to user_path(user)
  		end
  	end

  	context "with invalid attributes" do
  		it "does not save the new contribution in the database" do
  			user = create(:user)
  			expect{
  				post :create, user_id: user.id, contribution: attributes_for(:contribution_invalid)
  			}.to_not change(Contribution, :count)
  		end

  		it "re-renders the :new template" do
  			user = create(:user)
  			post :create, user_id: user.id, contribution: attributes_for(:contribution_invalid)
  			expect(response).to render_template :new
  		end
  	end
  end

  describe "Patch #update" do 	
  	before :each do
			@user = create(:user)
			@contribution = create(:contribution, user: @user)
  	end

  	context "valid attributes" do
  		it "located the requested @contribution" do  			
  			patch :update, user_id: @user.id, id: @contribution.id, :contribution => {:display => false}
  			expect(assigns(:contribution)).to eq(@contribution)
  		end

  		it "changes @contribution's attributes" do
  			patch :update, user_id: @user.id, id: @contribution.id, :contribution => {:display => false}
  			@contribution.reload
  			expect(@contribution.display).to eq(false)
  		end

  		it "redirects to user reader page" do
  			patch :update, user_id: @user.id, id: @contribution.id, :contribution => {:display => false}
  			expect(response).to redirect_to user_reader_path(@user)
  		end
  	end

  	context "with invalid attributes" do
  		it "does not change the contribution's attributes" do
  			patch :update, user_id: @user.id, id: @contribution.id, :contribution => {:name => nil}
  			@contribution.reload
  			expect(@contribution.name).to eq("Test donation")
  		end
  	end
  end
end
