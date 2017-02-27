FactoryGirl.define do
  factory :post do
    title "MyString"
    body "MyText"
    user_id { FactoryGirl.create(:user).id }
    summary "MyText"
  end
end
