require 'rails_helper'

RSpec.describe Auction, type: :model do
  let(:seller) {
    User.new(email: "alice@test.com", password: "password")
  }
  subject {
    described_class.new(
      title: "Anything", 
      description: "Lorem ipsum",
      start_date: DateTime.now, 
      end_date: DateTime.now + 1.week,
      seller: seller)
  }

  describe "Associations" do
    # it "has one buyer" do
    #   assc = described_class.reflect_on_association(:buyer)
    #   expect(assc.macro).to eq :has_one
    # end

    # it "has one seller" do
    #   assc = described_class.reflect_on_association(:seller)
    #   expect(assc.macro).to eq :has_one
    # end

    it { should belong_to(:buyer) }
    it { should belong_to(:seller) }
    it { should have_many(:bids) }
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    
    it "is not valid without a title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end
    
    it "is not valid without a description" do
      subject.description = nil
      expect(subject).to_not be_valid
    end
    
    it "is not valid without a start_date" do
      subject.start_date = nil
      expect(subject).to_not be_valid
    end
    
    it "is not valid without a end_date" do
      subject.end_date = nil
      expect(subject).to_not be_valid
    end
  end
end
