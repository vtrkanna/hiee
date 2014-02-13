class Agent < ActiveRecord::Base
  has_many :subscribers
  has_many :products
  has_many :areas

  belongs_to :password
  belongs_to :email
  belongs_to :name
  belongs_to :contact_info
  belongs_to :contact_number
  belongs_to :content
  belongs_to :social_hub

end
