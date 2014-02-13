class BookingStatus < ActiveRecord::Base
  #validate fields
  validates :name, presence: true
end
