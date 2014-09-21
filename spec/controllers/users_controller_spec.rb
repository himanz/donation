require 'spec_helper'

describe UsersController do
  describe "GET #show" do
  	before :each do
  		@user = create(:user)
  		get :show, id: @user
  	end

  	it "assigns the requested user to @user" do
      expect(assigns(:user)).to eq @user
  	end

  	it "populates an array with all contributions for user by date created descending order" do
  		contribution1 = create(:contribution, user_id: @user.id)
  		contribution2 = create(:contribution2, user_id: @user.id)
  		expect(assigns(:contributions)).to eq [contribution2, contribution1]
  	end

  	it "renders the :show template" do
  		expect(response).to render_template :show
  	end
  end

  describe "GET #reader" do
  	before :each do
  		@user = create(:user)
  		get :reader, id: @user
  	end

    it "assigns the requested contribution to @contribution" do
    	contribution1 = create(:contribution, user_id: @user.id)
  		contribution2 = create(:contribution2, user_id: @user.id, display: false)
  		contribution3 = create(:contribution2, user_id: @user.id)
  		expect(assigns(:contributions)).to eq [contribution1, contribution3]
    end

    it "populates an array with contributions with display true attribute" do
    	contribution1 = create(:contribution, user_id: @user.id)
  		contribution2 = create(:contribution2, user_id: @user.id)
    end

    it "renders the :reader template" do
    	get :reader, id: @user
    	expect(response).to render_template :reader
    end
  end
end
