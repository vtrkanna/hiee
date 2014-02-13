class Menu < ActiveRecord::Base
  #realtionship
  belongs_to :page
  belongs_to :site

  #Validations
  validates :name, presence: true
end
