class Area < ActiveRecord::Base
  #Relationship fields
  belongs_to :agent
  has_many :products
  has_one :area_other_info
  has_one :area_event
  has_one :area_subscriber

  belongs_to :name
  belongs_to :password


  #validate fields
end
