FactoryGirl.define do
  sequence(:slug_uid) { |n| "#{n}"}

  factory :page do
    content { Faker::HTMLIpsum.fancy_string }
    name    { Faker::HipsterIpsum.word }
    slug    { "#{name.parameterize}-#{generate(:slug_uid)}" }
  end
end
