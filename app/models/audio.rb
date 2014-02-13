class Audio < ActiveRecord::Base
  belongs_to :status
  has_one :image
  has_one :avatar

  #Validate fields
  validates :name, :file_name, :audio_path, :audio_type, :caption, :licence, :licence_key, :licence_type, :avatar, :presence => true
end
