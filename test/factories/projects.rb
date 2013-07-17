# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    user
    title "Manhattan Project"
    teaser: "Top secret" 
    description: "It is a thing to do other things" 
    goal: 150000
  end
end
