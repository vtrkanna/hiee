class ContactInfo < ActiveRecord::Base
  has_many :emails
  has_many :contact_numbers
  has_many :social_hubs
  has_many :addresses
end
