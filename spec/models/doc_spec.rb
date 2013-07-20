require 'spec_helper'

describe Doc do

  let(:doc) { FactoryGirl.build(:doc) }

  it 'should be valid with valid attributes' do
    doc.should be_valid
  end

  describe '#name' do
    it 'should not be empty' do
      doc.name = ' '
      doc.should be_invalid
    end
  end

  describe '#example' do
    it 'should not be empty' do
      doc.example.destroy
      doc.should be_invalid
    end

    it 'should not be fake' do
      doc.save
      File.exist?(doc.example.path).should == true
    end
  end

end
