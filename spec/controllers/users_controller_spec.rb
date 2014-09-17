require 'spec_helper'

describe UsersController do
  describe "GET #show" do
  	it "assigns the requested user to @user" do
  		user = create(:user)
      get :show, id: user
      expect(assigns(:user)).to eq user
  	end
  	it "renders the :show template"
  end
end
