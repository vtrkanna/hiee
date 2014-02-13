class AreaSubscriber < ActiveRecord::Base
  #Relationship
  belongs_to :area
  has_many :subscribers
end
