require 'spec_helper'

describe Review do

  let(:review) { FactoryGirl.build(:review) }

  it 'should be valid with valid attributes' do
    review.should be_valid
  end

  describe '#caption' do
    it 'should not be empty' do
      review.caption = ' '
      review.should be_invalid
    end
  end

  describe '#content' do
    it 'should not be empty' do
      review.content = ' '
      review.should be_invalid
    end
  end

end
