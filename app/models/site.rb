class Site < ActiveRecord::Base
  has_many :pages
  has_many :menus
  belongs_to :url

  validates :name, presence: true
end
