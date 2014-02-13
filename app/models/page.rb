class Page < ActiveRecord::Base
  #Relationship
  belongs_to :site
  belongs_to :status
  belongs_to :menu

  #validations
  validates :name, presence: true
end
