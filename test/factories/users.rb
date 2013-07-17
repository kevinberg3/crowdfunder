# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "James"
    last_name "Cook"
    sequence(:email) {|n| "james#{n}@me.com"}
    password "funboy"
  end
end
