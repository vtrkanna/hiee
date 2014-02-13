class Breadcrumb < ActiveRecord::Base
  #Validate fields
  validates :name, presence: true
end
