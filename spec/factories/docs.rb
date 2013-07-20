FactoryGirl.define do
  factory :doc do
    name    { Faker::HipsterIpsum.phrase }
    example File.new(Rails.root + 'spec/fixtures/docs_examples/HedgehogsDances.doc')
  end
end
