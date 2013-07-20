# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :order do
    last_name  { Faker::HipsterIpsum.phrase }
    first_name { Faker::HipsterIpsum.phrase }
    content    { Faker::HipsterIpsum.paragraph }
    email      { Faker::Internet.email }
    phone      { Faker::PhoneNumber.phone_number }
  end
end
