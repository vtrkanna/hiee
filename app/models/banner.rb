class Banner < ActiveRecord::Base
  has_many :sites
  has_many :pages
end
