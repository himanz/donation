# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contribution do
    name "Test donation"
    amount 3.50
    message "This is a test donation"
    # user

    factory :contribution_invalid do
	  	name nil
	  end
  end
end
