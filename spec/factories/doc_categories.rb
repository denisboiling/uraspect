FactoryGirl.define do
  factory :doc_category do
    name { Faker::DizzleIpsum.word.capitalize }
  end
end
