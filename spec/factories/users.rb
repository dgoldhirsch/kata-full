FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    password "p@ssw0rd"
  end
end
