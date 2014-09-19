# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	email "test@test.com"
  	password "12345678"

    factory :user_with_contributions do
      email "test1@test.com"
      password "12345678"
    end
  end
end
