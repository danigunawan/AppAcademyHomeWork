require 'rails_helper'

RSpec.describe BiddingEngine do
  describe '.bid!' do
    let(:seller) { User.create(:email => 'jane@doe.com', :password => 'pw1234') }
    let(:bidder) { User.create(:email => 'john@doe.com', :password => 'pw1234') }
    let(:auction) { Auction.create(title: 'Anything', description: 'Lorem ipsum', start_date: DateTime.now, end_date: DateTime.now + 1.week, seller_id: seller.id) }

    it "creates a new bid on an auction" do
      described_class.bid!(auction, bidder, 100)
      expect(auction.errors).to be_empty

      described_class.bid!(auction, bidder, 90)
      expect(auction.errors[:bid].first).to eq "must be bigger than the last bid" 
    end

    it 'cannot create a bid if it is equal to the last bid' do
      described_class.bid!(auction, bidder, 100)
      expect(auction.errors).to be_empty

      described_class.bid!(auction, bidder, 100)
      expect(auction.errors[:bid].first).to eq "must be bigger than the last bid" 
    end
  end
end