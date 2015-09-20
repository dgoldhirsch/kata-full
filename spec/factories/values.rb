FactoryGirl.define do
  factory :value do
    name "MyString"
    value 1
    association :user
  end
end
