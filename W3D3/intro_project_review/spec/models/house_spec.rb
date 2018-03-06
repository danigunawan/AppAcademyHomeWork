require 'rails_helper'

RSpec.describe House, :type => :model do
  subject {
      described_class.new(address: '123 test st.')
  }

  context "associations" do
    it "has many residents" do
      should have_many(:residences)
    end
  end

  describe "validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without an address" do
      subject.address = nil
      expect(subject).to_not be_valid
    end
  end
end