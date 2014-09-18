require 'spec_helper'

describe UsersController do
  describe "GET #show" do
  	before do
  		@user = create(:user)
  		get :show, id: @user
  	end

  	it "assigns the requested user to @user" do
      expect(assigns(:user)).to eq @user
  	end

  	it "populates an array with all contributions for user" do
  		contribution1 = create(:contribution, user_id: @user.id)
  		contribution2 = create(:contribution, user_id: @user.id)
  		
  		expect(assigns(:contributions)).to match_array([contribution1, contribution2])
  	end

  	it "renders the :show template" do
  		expect(response).to render_template :show
  	end
  end
end
