require 'spec_helper'

describe Contribution do
  it "is valid with an name, amount and message" do
  	contribution = create(:contribution)
  	expect(contribution).to be_valid
  end
  it "is invalid without a name"
  it "is invalid without an amount"
  it "is invalid without a message"
end
