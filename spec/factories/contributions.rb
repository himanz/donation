# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contribution do
    name "Test donation"
    amount 3.50
    message "This is a test donation"
    # user

    factory :contribution2 do
    	name "Test second"
    	amount 4.50
    	message "Hello there"
    end

    factory :contribution_invalid do
	  	name nil
	  end
  end
end
