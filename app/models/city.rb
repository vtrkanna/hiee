class City < ActiveRecord::Base
  #Relationship
  has_one :country

  #Validate fields
  validates :name, presence: true
end
