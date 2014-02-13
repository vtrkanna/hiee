class BookedProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :subscriber
  belongs_to :subscriber_bucket
  has_one :area
  has_one :agent
  belongs_to :booking_status
  has_one :booked_status
end
