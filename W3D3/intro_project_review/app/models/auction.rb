class Auction < ApplicationRecord
  validates :title, :description, :start_date, :end_date, presence: true

  belongs_to :buyer, class_name: 'User', optional: true
  belongs_to :seller, class_name: 'User'

  has_many :bids
end
