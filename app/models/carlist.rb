class Carlist < ApplicationRecord

  has_many :reactions
  
  mount_uploader :profile_image, ProfileImageUploader
end
