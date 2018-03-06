require 'rails_helper'

RSpec.describe Person, :type => :model do
  context "associations" do
    it "belongs to a house" do
      should belong_to(:house)
    end
  end

  describe "validations" do
    subject { 
      described_class.new(name: 'alice', house_id: 1)
    }
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a house_id" do
      subject.house_id = nil
      expect(subject).to_not be_valid
    end
  end
end