class Bid < ApplicationRecord
  validates :amount, presence: true

  belongs_to :bidder, class_name: 'User'
  belongs_to :auction
end
