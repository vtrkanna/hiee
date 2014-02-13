class BookedStatus < ActiveRecord::Base
  #Validate fields
  validates :name, presence: true
end
