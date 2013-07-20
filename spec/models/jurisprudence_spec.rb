require 'spec_helper'

describe Jurisprudence do

  let(:jurisprudence) { FactoryGirl.build(:jurisprudence) }

  it 'should be valid with valid attributes' do
    jurisprudence.should be_valid
  end

  describe '#name' do
    it 'should not be empty' do
      jurisprudence.name = ' '
      jurisprudence.should be_invalid
    end
  end

  describe '#content' do
    it 'should not be empty' do
      jurisprudence.content = ' '
      jurisprudence.should be_invalid
    end
  end

end
