require 'spec_helper'

describe Order do

  let(:order) { FactoryGirl.build(:order) }

  it 'should be valid with valid attributes' do
    order.should be_valid
  end

  describe '#last_name' do
    it 'should not be empty' do
      order.last_name = ' '
      order.should be_invalid
    end
  end

  describe '#first_name' do
    it 'should not be empty' do
      order.first_name = ' '
      order.should be_invalid
    end
  end

  describe '#phone' do
    it 'should not be empty' do
      order.phone = ' '
      order.should be_invalid
    end
  end

  describe '#content' do
    it 'should not be empty' do
      order.content = ' '
      order.should be_invalid
    end
  end

end
