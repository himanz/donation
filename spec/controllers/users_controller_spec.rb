require 'spec_helper'

describe UsersController do
  describe "GET #show" do
  	it "assigns the requested user to @user" do
  		user = create(:user)
      get :show, id: user
      expect(assigns(:user)).to eq user
  	end

  	it "populates an array with all contributions for user" do
  		user = create(:user)
  		contribution1 = create(:contribution, user_id: user.id)
  		contribution2 = create(:contribution, user_id: user.id)
  		hello = "hello"
  		get :show, id: user
  		expect(assigns(:contributions)).to match_array([contribution1, contribution2])
  	end

  	it "renders the :show template" do
  		user = create(:user)
  		get :show, id: user
  		expect(response).to render_template :show
  	end
  end
end
