FactoryGirl.define do
  factory :user do
    username "MyString"
    email { Faker::Internet.email }
    bio "MyText"
  end
end
