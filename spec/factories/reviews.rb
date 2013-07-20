FactoryGirl.define do
  factory :review do
    caption { Faker::Name.name }
    content { Faker::HipsterIpsum.paragraph }
    moderated false

    factory :moderated_review do
      moderated true
    end
  end
end
