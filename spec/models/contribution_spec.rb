require 'spec_helper'

describe Contribution do
  it "is valid with an name, amount and message" do
  	contribution = create(:contribution)
  	expect(contribution).to be_valid
  end

  it "is invalid without a name" do
  	expect(Contribution.new(name: nil)).to have(1).errors_on(:name)
  end

  it "is invalid without an amount" do
  	expect(Contribution.new(amount: nil)).to have(1).errors_on(:amount)
  end

  it "is invalid without a message" do
  	expect(Contribution.new(message: nil)).to have(1).errors_on(:message)
  end
end
