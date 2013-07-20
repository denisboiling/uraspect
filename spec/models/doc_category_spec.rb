require 'spec_helper'

describe DocCategory do

  let(:doc_category) { FactoryGirl.build(:doc_category) }

  it 'should be valid with valid attributes' do
    doc_category.should be_valid
  end

  describe '#name' do
    it 'should not be empty' do
      doc_category.name = ' '
      doc_category.should be_invalid
    end
  end

end
