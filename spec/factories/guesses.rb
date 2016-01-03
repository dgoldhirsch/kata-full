FactoryGirl.define do
  factory :guess do
    name "MyString"
    value 1
    association :user
  end
end
