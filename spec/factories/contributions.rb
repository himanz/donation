# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contribution do
    name "MyString"
    amount "9.99"
    message "MyString"
  end
end
