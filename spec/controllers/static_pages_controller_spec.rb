require 'spec_helper'

describe StaticPagesController do
  describe "home route" do
  	it "routes to home" do
  		get :home
  		expect(:response).to render_template :home
    end
  end
end
