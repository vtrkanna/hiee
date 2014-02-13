class Address < ActiveRecord::Base
  #Relationship
  has_many :sites
  has_one :subscriber
  #validates
  validates :active, presence: true
end
