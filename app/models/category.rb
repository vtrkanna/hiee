class Category < ActiveRecord::Base
  has_many :sites
  #Validate fields
  validates :name, :category_type, presence: true
end
